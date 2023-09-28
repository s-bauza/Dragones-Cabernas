
INSERT INTO jugadores(jugadorId, nombre) VALUES 
(1,'Breakfury'),
(2,'Hammerpowerthunder'),
(3,'Battlerboar'),
(4,'Cloakbane'),
(5,'Greyblade');
 
 INSERT INTO dagas(dagaId,nombre) VALUES
(1,"Daga de madera"),
(2,"Daga de bronce"),
(3,"Daga de marfil"),
(4,"Daga de diamante");
 
INSERT INTO guerreros(nombre,jugadorId,dagaId,vida,nivel,oro,mana,apariencia,fuerza)
	VALUES ("Stanto",3,1,100,4,110,150,'M',4),
		("Makwi",4,2,330,8,230,500,'M',7),
		("Carorhall",3,3,80,2,450,700,'F',9),
		("Dryto",4,4,250,6,320,300,'M',3);
        
INSERT INTO magos(nombre,jugadorId,dagaId,vida,nivel,oro,mana,apariencia,fuerza) 
VALUES 
('Raendan',1,1,100,1,0,150,'M',1),
('Manddin',4,2,300,5,129,500,'F',5),
('Xadel',4,4,510,7,540,700,'F',11),
('Enso',2,1,250,3,34,300,'F',3);

INSERT INTO tanques(nombre,jugadorId,dagaId,vida,nivel,oro,mana,apariencia,fuerza) 
VALUES 
('Ahkarg',4,1,3000,7,150,95,'F',2),
('Bucksel',5,1,1500,4,101,70,'M',1),
('Mashgor',2,1,15320,45,52423,300,'M',6),
('Gim',1,1,5345,13,983,125,'F',3);

INSERT INTO espectros(codigo,nombre,vida)
	VALUES (1,"Ligos",200),
		(2,"Bachpai",300),
		(3,"Lira",500),
		(4,"Hana",260);
        

INSERT INTO trolls(codigo,nombre,vida)
	VALUES (1,"Ibe",1000),
		(2,"Ry",1200),
		(3,"Ulne",1600),
		(4,"Fargan",1100);
        
INSERT INTO goblins(codigo,nombre,vida)
	VALUES (1,"Kruulha",100),
		(2,"Rargbal",150),
		(3,"Aalor",200),
		(4,"Goleth",120);

INSERT INTO mago_extermina(codigo,nombreMago,oro,fecha)
	VALUES (1,"Manddin",40,'2021-11-22 14:54:01'),
		(1,"Xadel",30,'2021-11-22 14:54:01'),
		(3,"Xadel",80,'2021-11-22 14:54:02'),
		(4,"Enso",50,'2021-11-22 14:54:01'),
        (2,"Xadel",70,'2021-11-22 14:54:03'),
        (4,"Xadel",50,'2021-11-22 14:54:04');
        
INSERT INTO tanque_acaba(codigo,nombreTanque,oro,fecha)
	VALUES (1,"Mashgor",60,'2021-11-22 14:54:01'),
		(1,"Gim",90,'2021-11-22 14:54:01'),
		(3,"Mashgor",110,'2021-11-22 14:54:02'),
		(4,"Ahkarg",80,'2021-11-22 14:54:01');
        
INSERT INTO guerrero_extermina(codigo,nombreGuerrero,oro,fecha)
	VALUES 
        (1,"Makwi",40,'2021-11-22 14:54:01'),
		(1,"Makwi",50,'2021-11-22 14:54:02'),
		(4,"Dryto",60,'2021-11-22 14:54:02'),
        (1,"Makwi",40,'2021-11-22 14:54:03'),(1,"Makwi",40,'2021-11-22 14:54:04'),(1,"Makwi",40,'2021-11-22 14:54:05'),(1,"Makwi",40,'2021-11-22 14:54:06'),(1,"Makwi",40,'2021-11-22 14:54:07'),(1,"Makwi",40,'2021-11-22 14:54:08'),(1,"Makwi",40,'2021-11-22 14:54:09'),(1,"Makwi",40,'2021-11-22 14:54:10'),
        (1,"Makwi",40,'2021-11-22 14:54:13'),(1,"Makwi",40,'2021-11-22 14:54:14'),(1,"Makwi",40,'2021-11-22 14:54:15'),(1,"Makwi",40,'2021-11-22 14:54:16'),(1,"Makwi",40,'2021-11-22 14:54:17'),(1,"Makwi",40,'2021-11-22 14:54:18'),(1,"Makwi",40,'2021-11-22 14:54:19'),(1,"Makwi",40,'2021-11-22 14:54:20'),
        (1,"Makwi",40,'2021-11-22 14:54:23'),(1,"Makwi",40,'2021-11-22 14:54:24'),(1,"Makwi",40,'2021-11-22 14:54:25'),(1,"Makwi",40,'2021-11-22 14:54:26'),(1,"Makwi",40,'2021-11-22 14:54:27'),(1,"Makwi",40,'2021-11-22 14:54:28'),(1,"Makwi",40,'2021-11-22 14:54:29'),(1,"Makwi",40,'2021-11-22 14:54:30'),
        (1,"Makwi",40,'2021-11-22 14:54:33'),(1,"Makwi",40,'2021-11-22 14:54:34'),(1,"Makwi",40,'2021-11-22 14:54:35'),(1,"Makwi",40,'2021-11-22 14:54:36'),(1,"Makwi",40,'2021-11-22 14:54:37'),(1,"Makwi",40,'2021-11-22 14:54:38'),(1,"Makwi",40,'2021-11-22 14:54:39'),(1,"Makwi",40,'2021-11-22 14:54:40'),
        (1,"Makwi",40,'2021-11-22 14:54:43'),(1,"Makwi",40,'2021-11-22 14:54:44'),(1,"Makwi",40,'2021-11-22 14:54:45'),(1,"Makwi",40,'2021-11-22 14:54:46'),(1,"Makwi",40,'2021-11-22 14:54:47'),(1,"Makwi",40,'2021-11-22 14:54:48'),(1,"Makwi",40,'2021-11-22 14:54:49'),(1,"Makwi",40,'2021-11-22 14:54:50'),
        (3,"Makwi",90,'2021-11-22 14:54:51'),(3,"Makwi",90,'2021-11-22 14:54:52'),(3,"Makwi",90,'2021-11-22 14:54:53'),(3,"Makwi",90,'2021-11-22 14:54:54'),(3,"Makwi",90,'2021-11-22 14:54:55'),(3,"Makwi",90,'2021-11-22 14:54:56'),(3,"Makwi",90,'2021-11-22 14:54:57'),(3,"Makwi",90,'2021-11-22 14:54:58');
        
INSERT INTO dragones (nombre,vida,desbloqueaDragon)
	VALUES ("Ocho Cabezas",120000,null),
		("Kystorm",25000,"Ocho Cabezas"),
		("Griffin",14000,"Kystorm"),
		("Pastan",9000,"Griffin"),
		("Rannyexbea",5000,"Pastan"),
		("Dehiss",3000,"Rannyexbea");
        
        INSERT INTO ciudades(nombre)
	VALUES ("Glider"),
		("Forgesand"),
		("Hiltore"),
		("Gazegreenelven"),
		("Greenbat"),
		("Huntdwarf"),
        ("Arkasia");

INSERT INTO forjas(nombre,nombreCiudad)
	VALUES
		("Forja de Harmek","Forgesand"),
        ("Forja de Harmek","Gazegreenelven"),
        ("Forja de Harmek","Greenbat"),
        ("Forja de Harmek","Hiltore"),
        
		("Forja del enano risueño","Gazegreenelven"),
        ("Forja del enano risueño","Huntdwarf"),
		("Forja del enano risueño","Glider"),
        ("Forja del enano risueño","Forgesand"),
        
        ("Forja de Tébez","Hiltore"),
		("Forja de Tébez","Greenbat"),
        ("Forja de Tébez","Glider"),
		("Forja de Tébez","Huntdwarf");


INSERT INTO tiendas(nombre, nombreCiudad)
VALUES ('Tienda de Rolla',    'Glider'),
('Tienda de Swithron', 'Forgesand'),
('Tienda de Swithron', 'Huntdwarf'),
('Tienda de Rolla', 'Huntdwarf'),
('Tienda de Swithron', 'Glider'),
('Tienda de Aldlas', 'Forgesand'),
('Tienda de Rolla', 'Hiltore'),
('Tienda de Aldlas', 'Hiltore'),
('Tienda de Rolla', 'Greenbat'),
('Tienda de Aldlas', 'Greenbat'),
('Tienda de Swithron', 'Gazegreenelven'),
('Tienda de Aldlas', 'Gazegreenelven'),
('Tienda de Swithron','Arkasia');



insert into espadas(codigoEspadas,nombre,daño,peso) values
(1,"Alfanje",24,5),
(2,"Espada flamígera",80,6),
(3,"Bracamarte",50,7);

insert into hachas(codigoHachas,nombre,daño,peso) values
(1,"Hacha de mano",40,6),
(2,"Hacha arrojadiza",60,8),
(3,"Hacha de doble punta",100,12);

insert into baculos(codigoBaculos,nombre,daño,peso) values
(1,"Báculo de Madera",80,2),
(2,"Mensajero de Maná",100,4),
(3,"Raiz de Oscuridad",120,8);


insert into fabrica_hacha(codigoHacha,nombreTanque,nombreForja,nombreCiudad,fecha) values
(1,"Ahkarg","Forja de Harmek","Huntdwarf","2021-08-06"),
(3,"Mashgor","Forja del enano risueño","Gazegreenelven","2021-09-14"),
(3,"Bucksel","Forja de Tébez","Hiltore","2021-10-11"),
(2,"Mashgor","Forja de Harmek","Huntdwarf","2021-08-06");

insert into porta_hacha(codigoHachas,nombreTanque,fecha) values
(1,"Ahkarg",'2021-10-06'),
(3,"Mashgor",'2021-10-06'),
(3,"Bucksel",'2021-10-06'),
(2,"Mashgor",'2021-10-06');

insert into fabrica_espada(codigoEspada,nombreGuerrero,nombreForja,nombreCiudad,fecha) values
(1,"Stanto","Forja de Harmek","Huntdwarf","2021-08-06"),
(2,"Makwi","Forja del enano risueño","Gazegreenelven","2021-09-14"),
(3,"Carorhall","Forja de Tébez","Hiltore","2021-10-11");

insert into porta_espada(codigoEspada,nombreGuerrero,fecha) values
(1,"Stanto",'2021-10-06'),
(2,"Makwi",'2021-10-06'),
(3,"Carorhall",'2021-10-06');

INSERT INTO guerrero_compra(dagaId,nombreGuerrero, nombreTienda, nombreCiudad,fecha) VALUES
(2,"Makwi",	'Tienda de Rolla',	'Glider','2021-10-06'),
(3,"Carorhall",	'Tienda de Rolla',	'Hiltore','2021-10-06'),
(4,"Dryto",	'Tienda de Rolla',	'Greenbat','2021-10-06');

INSERT INTO mago_compra(dagaId,nombreMago, nombreTienda, nombreCiudad,fecha) VALUES
(2,"Manddin",	'Tienda de Swithron',	'Arkasia','2021-10-06'),
(2,"Xadel",	'Tienda de Swithron',	'Arkasia','2021-10-06'),
(3,"Xadel",	'Tienda de Rolla',	'Hiltore','2021-10-06'),
(4,"Xadel",	'Tienda de Rolla',	'Greenbat','2021-10-06');

INSERT INTO escuadrones(idEscuadron) values (1);


INSERT INTO mago_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreMago) VALUES
("2021-11-15","2021-11-15",1,"Enso");
INSERT INTO tanque_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreTanque) VALUES
("2021-11-15","2021-11-15",1,"Bucksel");
INSERT INTO guerrero_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreGuerrero) VALUES
("2021-11-15","2021-11-15",1,"Makwi");

INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",1,"Dehiss");

INSERT INTO escuadrones(idEscuadron) values (2);

INSERT INTO mago_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreMago) VALUES
("2021-11-15","2021-11-15",2,"Enso");
INSERT INTO tanque_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreTanque) VALUES
("2021-11-15","2021-11-15",2,"Bucksel");
INSERT INTO guerrero_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreGuerrero) VALUES
("2021-11-15","2021-11-15",2,"Makwi");

INSERT INTO gana(fechaDragon,idEscuadron,nombre) values ("2021-11-15",2,"Dehiss");


INSERT INTO escuadrones(idEscuadron) values (3);

INSERT INTO mago_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreMago) VALUES
("2021-11-15","2021-11-15",3,"Enso");
INSERT INTO tanque_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreTanque) VALUES
("2021-11-15","2021-11-15",3,"Ahkarg");
INSERT INTO guerrero_mision_colectiva(fechaUnion,fechaSalida,idEscuadron,nombreGuerrero) VALUES
("2021-11-15","2021-11-15",3,"Makwi");


INSERT INTO pociones(codigoPocion,`cantidad de mana`,`cantidad de vida`) VALUES
(1,200,0),
(2,0,200),
(3,300,600);

INSERT INTO druidas(idDruida, nombre)
	VALUES(1,"Zucsur"),
		(2,"Losla"),
		(3,"Tar"),
		(4,"pikduk");
        
INSERT INTO druida_tiene(idDruida, codigoPocion)
	VALUES(1,1),
		(2,2),
		(3,2),
		(4,3);
        
INSERT INTO druida_regala_guerrero_pocion(fecha, idDruida, nombreGuerrero)
	VALUES("2021-11-17",1,"Makwi"),
		("2021-11-17",2,"Makwi"),
		("2021-11-17",3,"Makwi"),
		("2021-11-17",4,"Makwi"),
        ("2021-11-17",4,"Stanto");
        
        INSERT INTO habilidadesdemagos(nombre, descripcion)
	VALUES("Intelecto Arcano","Imbuye de brillantez al objetivo, lo que aumenta su intelecto un 5% durante 1 hour. Si el objetivo pertenece a tu grupo o banda, afectará a todos los miembros del grupo o banda."),
		("Traslación","Te teletransporta 20 m hacia delante o hasta llegar a un obstáculo, y te libera de aturdimientos y vínculos."),
		("Nova de Escarcha","Golpea a los enemigos situados en un radio de 12 m de ti, lo que les inflige (4.4775% of Spell power) p. de daño de Escarcha y los congela durante 8 sec. El daño puede interrumpir el efecto de congelación.");
        
         INSERT INTO habilidadesdeguerreros(nombre, descripcion)
	VALUES("Tajo de mandoble","Da un tajo a tu enemigo"),
		("Impacto abrumador","Empujas a los enemigos cercanos con un impacto abrumador."),
		("Ataque en torbellino","Hechizo de 3 seg. Gira en el sitio e inflige daño a los enemigos cercanos.");
        
         INSERT INTO habilidadesdetanques(nombre, descripcion)
	VALUES("Impacto feroz","Alcance de ataques cuerpo a cuerpo"),
		("Rompespaldas","Derribas al enemigo. Los enemigos debilitados permanecen derribados más tiempo. Recargas Impacto feroz si controlas a un enemigo con esta habilidad. Recarga Impacto feroz si se golpea a un objetivo con barra de desafío."),
		("Seísmo","Colma a una poderosa criatura de Monte Alto con energía sísmica, lo que provoca que el suelo a su alrededor tiemble.");
