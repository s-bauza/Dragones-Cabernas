-- a) Define un trigger para que cuando un jugador haya matado al menos 3 dragones, su vida aumente en 5.

-- Se contempla que cada vez, que un personaje de un jugador mata 3 dragones, aumenta su vida en 5 (la del personaje).

DELIMITER $$
CREATE TRIGGER aumentarVida AFTER INSERT ON gana
FOR EACH ROW
BEGIN
    DECLARE jugadorIdTablaMagos,jugadorIdTablaTanques,jugadorIdTablaGuerreros int;
    DECLARE nombrePersonajesMagos,nombrePersonajesTanques,nombrePersonajesGuerreros varchar(30);
    DECLARE vidaMagos,vidaTanques,vidaGuerreros int;
	DECLARE done INT DEFAULT FALSE;
    DECLARE cur1 CURSOR FOR select magos.jugadorId,magos.nombre,magos.vida from magos 
		inner join mago_mision_colectiva 
		on mago_mision_colectiva.nombreMago = magos.nombre
		inner join gana on gana.idEscuadron = mago_mision_colectiva.idEscuadron
		group by magos.jugadorId,magos.nombre,magos.vida
        having count(*)%3=0;
        
    DECLARE cur2 CURSOR FOR select tanques.jugadorId,tanques.nombre,tanques.vida  from tanques 
		inner join tanque_mision_colectiva 
		on tanque_mision_colectiva.nombreTanque = tanques.nombre
		inner join gana on gana.idEscuadron = tanque_mision_colectiva.idEscuadron
		group by tanques.jugadorId,tanques.nombre,tanques.vida
        having count(*)%3=0;
	
	DECLARE cur3 CURSOR FOR select guerreros.jugadorId,guerreros.nombre,guerreros.vida   from guerreros 
		inner join guerrero_mision_colectiva
		on guerrero_mision_colectiva.nombreGuerrero = guerreros.nombre
		inner join gana on gana.idEscuadron = guerrero_mision_colectiva.idEscuadron
		group by guerreros.jugadorId,guerreros.nombre,guerreros.vida
        having count(*)%3=0;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

open cur1;
    read_loop1: LOOP
    fetch cur1 into jugadorIdTablaMagos,nombrePersonajesMagos,vidaMagos;
    
		update magos
		set magos.vida= vidaMagos + 5
		where magos.jugadorId = jugadorIdTablaMagos and magos.nombre = nombrePersonajesMagos;

		IF done THEN
			LEAVE read_loop1;
		END IF;
	END LOOP;
	CLOSE cur1;

    open cur2;
     read_loop2: LOOP
    fetch cur2 into jugadorIdTablaTanques,nombrePersonajesTanques,vidaTanques;
    
    update tanques
		set tanques.vida= vidaTanques + 5
		where tanques.jugadorId = jugadorIdTablaTanques and tanques.nombre = nombrePersonajesTanques;
        
		IF done THEN
			LEAVE read_loop2;
		END IF;
	END LOOP;
	CLOSE cur2;

open cur3;
     read_loop3: LOOP
    fetch cur3 into jugadorIdTablaGuerreros,nombrePersonajesGuerreros,vidaGuerreros;
    
     update guerreros
		set guerreros.vida= vidaGuerreros + 5
		where guerreros.jugadorId = jugadorIdTablaGuerreros and guerreros.nombre = nombrePersonajesGuerreros;
        
		IF done THEN
			LEAVE read_loop3;
		END IF;
	END LOOP;
	CLOSE cur3;
    
END$$;
DELIMITER ;

INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",3,"Dehiss");

select * from gana;
select * from guerreros;

-- b) Define un trigger para impedir que un escuadron mate un dragon que no haya sido desbloqueado por alguno de sus integrantes.


-- Lo dejo plantedo antes de (before insert) en la tabla de gana los miembros del escuadron deben de haber 
	-- ganado al dragon anterior al que van a derrotar, cuidado cuando la tabla esta vacia y se inserta al 
    -- primer escuadron o la primera vez que se gana al primer dragon

DELIMITER $$
CREATE TRIGGER condionDePeleaDragon BEFORE INSERT ON gana
FOR EACH ROW
BEGIN
    DECLARE DragonAnt varchar(250);
    DECLARE DragonAct varchar(250);
    DECLARE nombreAct varchar(250);
	DECLARE done INT DEFAULT FALSE;
    DECLARE seguir1,seguir2,seguir3 INT DEFAULT 1;
    DECLARE num INT DEFAULT 0;
    
    DECLARE cur1 CURSOR FOR select nombre from dragones;
    DECLARE cur2 CURSOR FOR SELECT distinct nombreMago FROM mago_mision_colectiva INNER JOIN gana ON mago_mision_colectiva.idEscuadron = gana.idEscuadron
								WHERE gana.idEscuadron = NEW.idEscuadron AND NEW.fechaDragon >=  mago_mision_colectiva.fechaUnion AND NEW.fechaDragon <=  mago_mision_colectiva.fechaSalida;
							
	DECLARE cur3 CURSOR FOR SELECT distinct nombreGuerrero FROM guerrero_mision_colectiva INNER JOIN gana ON guerrero_mision_colectiva.idEscuadron = gana.idEscuadron
								WHERE gana.idEscuadron = NEW.idEscuadron AND NEW.fechaDragon >=  guerrero_mision_colectiva.fechaUnion AND NEW.fechaDragon <=  guerrero_mision_colectiva.fechaSalida;
							
	DECLARE cur4 CURSOR FOR SELECT distinct nombreTanque FROM tanque_mision_colectiva INNER JOIN gana ON tanque_mision_colectiva.idEscuadron = gana.idEscuadron
								WHERE gana.idEscuadron = NEW.idEscuadron AND NEW.fechaDragon >=  tanque_mision_colectiva.fechaUnion AND NEW.fechaDragon <=  tanque_mision_colectiva.fechaSalida;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	IF new.nombre <> "Dehiss" THEN
		open cur1;
		read_loop1: LOOP
			fetch cur1 into DragonAct;
            SET DragonAnt = (SELECT distinct nombre FROM dragones WHERE dragones.desbloqueaDragon = DragonAct);
			IF DragonAct = NEW.nombre THEN
				SET done = TRUE;
			END IF;
			IF done THEN
				LEAVE read_loop1;
			END IF;
        END LOOP;
        CLOSE cur1;

        SET done = FALSE;
        open cur2;
        read_loop2: LOOP
			fetch cur2 INTO nombreAct;
            SET num = (SELECT count(distinct gana.nombre)
					   FROM mago_mision_colectiva INNER JOIN gana ON mago_mision_colectiva.idEscuadron = gana.idEscuadron
					   WHERE mago_mision_colectiva.nombreMago = nombreAct AND gana.nombre = DragonAnt
					   AND gana.fechaDragon >= mago_mision_colectiva.fechaUnion AND gana.fechaDragon <=  mago_mision_colectiva.fechaSalida);
				IF num = 0 THEN
                    SET seguir1 = 0;
                    SET done = TRUE;
				END IF;
            IF done THEN
				LEAVE read_loop2;
			END IF;
        END LOOP;
        CLOSE cur2;
        
        SET num = 0;   
         open cur3;
        read_loop3: LOOP
			fetch cur3 INTO nombreAct;
        SET num = num + (SELECT count(distinct gana.nombre)
					   FROM guerrero_mision_colectiva INNER JOIN gana ON guerrero_mision_colectiva.idEscuadron = gana.idEscuadron
					   WHERE guerrero_mision_colectiva.nombreGuerrero = nombreAct AND gana.nombre = DragonAnt
					   AND gana.fechaDragon >= guerrero_mision_colectiva.fechaUnion AND gana.fechaDragon <=  guerrero_mision_colectiva.fechaSalida);
                       IF num = 0 THEN
                    SET seguir2 = 0;
                    SET done = TRUE;
				END IF;
            IF done THEN
				LEAVE read_loop3;
			END IF;
        END LOOP;
        CLOSE cur3;
        
        SET num = 0;   
         open cur4;
        read_loop4: LOOP
			fetch cur4 INTO nombreAct;
       SET num = num + (SELECT count(distinct gana.nombre)
					   FROM tanque_mision_colectiva INNER JOIN gana ON tanque_mision_colectiva.idEscuadron = gana.idEscuadron
					   WHERE tanque_mision_colectiva.nombreTanque = nombreAct AND gana.nombre = DragonAnt
					   AND gana.fechaDragon >= tanque_mision_colectiva.fechaUnion AND gana.fechaDragon <=  tanque_mision_colectiva.fechaSalida);
                       IF num = 0 THEN
                    SET seguir3 = 0;
                    SET done = TRUE;
				END IF;
            IF done THEN
				LEAVE read_loop4;
			END IF;
        END LOOP;
        CLOSE cur4;
        
        IF seguir1 = seguir2 = seguir3 = 0 THEN
         signal sqlstate '45000' 
         SET message_text = "NO SE PUEDE REALIZAR EL INSERT";
           -- DELETE FROM gana WHERE gana.nombre = NEW.nombre AND gana.fechaDragon = NEW.fechaDragon AND gana.idEscuadron = NEW.idEscuadron;
        END IF;
	END IF;
END$$;
DELIMITER ;

select * from gana;

 INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",3,"Dehiss");
 INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",3,"Pastan");
 INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",3,"Rannyexbea");
