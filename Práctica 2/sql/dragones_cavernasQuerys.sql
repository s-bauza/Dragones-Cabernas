-- a) Obtener los dragones que tengan nombre “Griffin” u “Ocho Cabezas”.

select dragones.nombre from dragones 
where dragones.nombre = "Griffin" or dragones.nombre="Ocho Cabezas";

-- b) Obtener los guerreros que haya comprado dagas en la “Tienda de Rolla” y forjado
-- espadas en la “Forja del enano risueno”.

select guerreros.* from guerreros 
inner join guerrero_compra on guerrero_compra.nombreGuerrero = guerreros.nombre
inner join fabrica_espada on fabrica_espada.nombreGuerrero=guerreros.nombre
where fabrica_espada.nombreForja="Forja del enano risueño" and guerrero_compra.nombreTienda="Tienda de Rolla";

-- c) Obtener el oro total ganado por los personajes ordenado de mayor a menor.
	
   select t1.nombreMago as "Nombre personajes", t1.oro as "oro total ganado" 
   from (select mago_extermina.nombreMago, sum(mago_extermina.oro) oro
    from mago_extermina 
    group by mago_extermina.nombreMago
    union all
    select tanque_acaba.nombreTanque,sum(tanque_acaba.oro) oro 
    from tanque_acaba 
    group by tanque_acaba.nombreTanque
    UNION ALL
    select guerrero_extermina.nombreGuerrero,sum(guerrero_extermina.oro) oro 
    from guerrero_extermina 
    group by guerrero_extermina.nombreGuerrero) t1 
    order by t1.oro DESC;
    
    
    
-- d) Obtener el numero total de dragones que ha matado cada jugador con cualquier personaje.
	
    select magos.jugadorId,magos.nombre as 'Nombre del personaje', count(*) as "Numero total de dragones derrotados" from magos 
    inner join mago_mision_colectiva 
    on mago_mision_colectiva.nombreMago = magos.nombre
    inner join gana on gana.idEscuadron = mago_mision_colectiva.idEscuadron
    where gana.fechaDragon >= mago_mision_colectiva.fechaUnion AND gana.fechaDragon <=  mago_mision_colectiva.fechaSalida
    group by magos.jugadorId,magos.nombre
    union all
    select tanques.jugadorId,tanques.nombre, count(*)  from tanques 
    inner join tanque_mision_colectiva 
    on tanque_mision_colectiva.nombreTanque = tanques.nombre
    inner join gana on gana.idEscuadron = tanque_mision_colectiva.idEscuadron
    where 	gana.fechaDragon >= tanque_mision_colectiva.fechaUnion AND gana.fechaDragon <=  tanque_mision_colectiva.fechaSalida
    group by tanques.jugadorId,tanques.nombre
    union all 
    select guerreros.jugadorId,guerreros.nombre, count(*)   from guerreros 
    inner join guerrero_mision_colectiva
    on guerrero_mision_colectiva.nombreGuerrero = guerreros.nombre
    inner join gana on gana.idEscuadron = guerrero_mision_colectiva.idEscuadron
    where gana.fechaDragon >= guerrero_mision_colectiva.fechaUnion AND gana.fechaDragon <=  guerrero_mision_colectiva.fechaSalida
    group by guerreros.jugadorId,guerreros.nombre;
    
    
    
-- e) Obtener el nombre de los jugadores cuyos personajes no hayan comprado en tiendas de ciudades con mas de dos forjas.
	
    
    select jugadores.nombre as "Nombre de los jugadores", guerreros.nombre as "Nombre de los personajes" from jugadores 
    inner join guerreros on guerreros.jugadorId = jugadores.jugadorId
    inner join guerrero_compra on guerrero_compra.nombreGuerrero = guerreros.nombre
    where guerreros.nombre not in (
    select guerreros.nombre from guerreros
    inner join guerrero_compra on guerrero_compra.nombreGuerrero = guerreros.nombre
    inner join ciudades on ciudades.nombre = guerrero_compra.nombreCiudad
    inner join forjas on forjas.nombreCiudad = ciudades.nombre
    group by guerreros.nombre
    having count(forjas.nombre)>=2)
    union all
	select jugadores.nombre as "Nombre de los jugadores", magos.nombre as "Nombre de los personajes" from jugadores 
    inner join magos on magos.jugadorId = jugadores.jugadorId
    inner join mago_compra on mago_compra.nombreMago = magos.nombre
    where magos.nombre not in (
    select magos.nombre from magos
    inner join mago_compra on mago_compra.nombreMago = magos.nombre
    inner join ciudades on ciudades.nombre = mago_compra.nombreCiudad
    inner join forjas on forjas.nombreCiudad = ciudades.nombre
    group by magos.nombre
    having count(forjas.nombre)>=2)
    union all
	select jugadores.nombre as "Nombre de los jugadores", tanques.nombre as "Nombre de los personajes" from jugadores 
    inner join tanques on tanques.jugadorId = jugadores.jugadorId
    inner join tanque_compra on tanque_compra.nombreTanque = tanques.nombre
    where tanques.nombre not in (
    select tanques.nombre from tanques
    inner join tanque_compra on tanque_compra.nombreTanque = tanques.nombre
    inner join ciudades on ciudades.nombre = tanque_compra.nombreCiudad
    inner join forjas on forjas.nombreCiudad = ciudades.nombre
    group by tanques.nombre
    having count(forjas.nombre)>=2);
    
    
    
-- f ) Obtener los tanques que  ́unicamente portan hachas de doble punta.
      
    select porta_hacha.nombreTanque as "Nombre del tanque", hachas.nombre as "Nombre del hacha" 
    from porta_hacha
    inner join hachas on hachas.codigoHachas = porta_hacha.codigoHachas
    where hachas.nombre = "Hacha de doble punta" 
    AND porta_hacha.nombreTanque NOT IN 
    (select porta_hacha.nombreTanque from porta_hacha
    inner join hachas on hachas.codigoHachas = porta_hacha.codigoHachas
    where hachas.nombre <> "Hacha de doble punta")
    group by porta_hacha.nombreTanque,hachas.nombre;
 
  
    
-- g) Obtener nombres, vida y fuerza de guerreros que hayan recibido una pocion de todos los druidas existentes.

select guerreros.nombre, guerreros.vida, guerreros.fuerza from guerreros
inner join druida_regala_guerrero_pocion 
on druida_regala_guerrero_pocion.nombreGuerrero = guerreros.nombre
group by guerreros.nombre,guerreros.vida, guerreros.fuerza
having count(distinct druida_regala_guerrero_pocion.idDruida) = (select count(*) from druidas);


-- h) Obtener el nivel de los magos que han derrotado a todos los espectros y han comprado todas las dagas disponibles.

select magos.nombre, magos.nivel from magos 
inner join mago_extermina on mago_extermina.nombreMago = magos.nombre
inner join mago_compra on mago_compra.nombreMago = magos.nombre
group by magos.nombre, magos.nivel
having 
count(distinct mago_extermina.codigo) = (select count(*) from espectros) 
AND 
count(distinct mago_compra.dagaId) = (select count(*) from dagas where dagas.nombre <> "Daga de madera") ;

-- i) Obtener el tanque que ha participado en el maximo numero de escuadrones.

select tanques.nombre from tanques 
inner join tanque_mision_colectiva on tanque_mision_colectiva.nombreTanque = tanques.nombre
group by tanques.nombre
having count(*) >= ALL (select count(*) from tanque_mision_colectiva group by tanque_mision_colectiva.nombreTanque);

-- j) Obtener el hacha con menor peso y el dueño de la forja donde se hizo.

select hachas.*, fabrica_hacha.nombreForja from hachas
inner join fabrica_hacha on fabrica_hacha.codigoHacha = hachas.codigoHachas
where hachas.peso = (select min(hachas.peso) from hachas);

		

													







