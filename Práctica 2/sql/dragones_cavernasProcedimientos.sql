SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

-- a) Define un procedimiento con un cursor para sumar 10 a la vida de cada guerrero que haya derrotado al menos 50 goblins.

DELIMITER $$
CREATE PROCEDURE guerrerosSumaVidas()
BEGIN
	DECLARE sumarvida int;
    DECLARE nombreGuerrero varchar(30);
    DECLARE done INT DEFAULT FALSE;
	DECLARE cur CURSOR FOR select guerreros.nombre, guerreros.vida from guerreros
    where guerreros.nombre in (select guerreros.nombre from guerreros
			inner join guerrero_extermina on guerrero_extermina.nombreGuerrero = guerreros.nombre
			group by guerrero_extermina.nombreGuerrero
			having count(*)>=50);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	open cur;
    read_loop: LOOP
		fetch cur into nombreGuerrero,sumarvida;
        update guerreros
			SET guerreros.vida = sumarvida + 10
            where guerreros.nombre = nombreGuerrero;
		IF done THEN
			LEAVE read_loop;
		END IF;
	END LOOP;
	CLOSE cur;
END$$
DELIMITER ;

call `dragones&cavernas`.guerrerosSumaVidas();
select * from guerreros; -- Makwi unico guerrero que ha habatido a mas de 50 goblins

-- b) Añade un atributo ‘última conexión’ a la tabla de personajes. 
--    Luego, crea un procedimiento que elimine los jugadores que no se hayan conectado en los últimos 60 dıas.
--    Puedes usar la funcion DATEDIFF1 para este fin.

SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;


alter table guerreros add ultima_conexion date default '2021-11-19';

alter table magos add ultima_conexion date default '2021-11-19';

alter table tanques add ultima_conexion date default '2021-11-19';

datediff(current_date(),tanques.ultima_conexion)

DELIMITER $$
CREATE PROCEDURE eliminarJugadoresAFK()
BEGIN
	DECLARE jugadorIdBorrado int;
    DECLARE done INT DEFAULT FALSE;
	DECLARE cur CURSOR FOR select distinct jugadorId from jugadores where
														    jugadorId not in
															(select jugadorId  from  magos
															where datediff(current_date(),magos.ultima_conexion) <= 60
															union all
															select jugadorId  from  guerreros 
															where datediff(current_date(),guerreros.ultima_conexion) <= 60
															union all
															select jugadorId  from  tanques 
															where datediff(current_date(),tanques.ultima_conexion) <= 60);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	open cur;
    read_loop: LOOP
		fetch cur into jugadorIdBorrado;
		DELETE FROM jugadores 
		WHERE
			jugadores.jugadorId = jugadorIdBorrado;
		IF done THEN
			LEAVE read_loop;
		END IF;
	END LOOP;
	CLOSE cur;
END$$
DELIMITER ;

UPDATE `dragones&cavernas`.`tanques` SET `ultima_conexion` = '2016-08-14' WHERE (`nombre` = 'Bucksel');
select * from jugadores;
select * from tanques;
select * from magos;
select * from guerreros;
call `dragones&cavernas`.eliminarJugadoresAFK();
