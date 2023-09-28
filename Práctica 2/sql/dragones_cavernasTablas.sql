CREATE SCHEMA `dragones&cavernas`;

-- Table jugadores

CREATE TABLE `dragones&cavernas`.`jugadores` (
  `jugadorId` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`jugadorId`));
  
  -- Tabla magos
  
  CREATE TABLE `dragones&cavernas`.`magos` (
  `nombre` VARCHAR(30)  ,
  `jugadorId` INT,
  `dagaId` INT ,
  `vida` INT ,
  `nivel` INT ,
  `oro` INT ,
  `mana` INT ,
  `apariencia` CHAR(1) ,
  `fuerza` INT ,
  PRIMARY KEY (`nombre`));
  
  -- Tabla tanques
  
  CREATE TABLE `dragones&cavernas`.`tanques` (
  `nombre` VARCHAR(30)  ,
  `jugadorId` INT ,
  `dagaId` INT ,
  `vida` INT ,
  `nivel` INT ,
  `oro` INT ,
  `mana` INT ,
  `apariencia` CHAR(1) ,
  `fuerza` INT ,
  PRIMARY KEY (`nombre`));
  
  -- Tabla guerreros
  
  CREATE TABLE `dragones&cavernas`.`guerreros` (
  `nombre` VARCHAR(30) ,
  `jugadorId` INT ,
  `dagaId` INT ,
  `vida` INT ,
  `nivel` INT ,
  `oro` INT,
  `mana` INT ,
  `apariencia` CHAR(1),
  `fuerza` INT ,
  PRIMARY KEY (`nombre`));
  
  -- Tabla dragones
  
  CREATE TABLE `dragones&cavernas`.`dragones` (
  `nombre` varchar(250),
  `vida` INT ,
  `desbloqueaDragon` varchar(250),
  PRIMARY KEY (`nombre`));

  -- Tabla escuadrones
  
  CREATE TABLE `dragones&cavernas`.`escuadrones` (
  `idEscuadron` INT ,
  PRIMARY KEY (`idEscuadron`));
  
  -- Tabla druidas
  
  CREATE TABLE `dragones&cavernas`.`druidas` (
  `idDruida` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idDruida`));
  
  -- Tabla pociones
  
  CREATE TABLE `dragones&cavernas`.`pociones` (
  `codigoPocion` INT NOT NULL,
  `cantidad de mana` INT NULL,
  `cantidad de vida` INT NULL,
  PRIMARY KEY (`codigoPocion`));
  
  -- Tabla druida_tiene
  CREATE TABLE `dragones&cavernas`.`druida_tiene` (
	`idDruida` INT NOT NULL,
    `codigoPocion` INT NOT NULL,
  PRIMARY KEY (`idDruida`,`codigoPocion`));
  
  
  -- Tabla dagas
  
  CREATE TABLE `dragones&cavernas`.`dagas` (
  `dagaId` INT NOT NULL,
  `nombre` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`dagaId`));
  
  -- Tabla tiendas
  
CREATE TABLE `dragones&cavernas`.`tiendas` (
  `nombre` VARCHAR(45) NOT NULL,
  `nombreCiudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`,`nombreCiudad`));

-- Tabla ciudades

CREATE TABLE `dragones&cavernas`.`ciudades` (
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`));

-- Tabla forjas

CREATE TABLE `dragones&cavernas`.`forjas` (
  `nombre` VARCHAR(45) NOT NULL,
  `nombreCiudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`,`nombreCiudad`));

-- Tabla mago_compra

CREATE TABLE `dragones&cavernas`.`mago_compra` (
  `dagaId` INT ,
  `nombreMago` VARCHAR(30) ,
  `nombreTienda` VARCHAR(45),
  `nombreCiudad` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`dagaId`,`nombreMago`,`nombreTienda`,`nombreCiudad`,`fecha`));
  
  -- Tabla tanque_compra
  
  CREATE TABLE `dragones&cavernas`.`tanque_compra` (
  `dagaId` INT ,
  `nombreTanque` VARCHAR(30) ,
  `nombreTienda` VARCHAR(45) ,
  `nombreCiudad` VARCHAR(45), 
  `fecha` DATETIME,
  PRIMARY KEY (`dagaId`,`nombreTanque`,`nombreTienda`,`nombreCiudad`,`fecha`));
  
  -- Tabla guerrero_compra
  
  CREATE TABLE `dragones&cavernas`.`guerrero_compra` (
  `dagaId` INT ,
  `nombreGuerrero` VARCHAR(30) ,
  `nombreTienda` VARCHAR(45) ,
  `nombreCiudad` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`dagaId`,`nombreGuerrero`,`nombreTienda`,`nombreCiudad`,`fecha`));

-- Tabla espectros

CREATE TABLE `dragones&cavernas`.`espectros` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `vida` INT NOT NULL,
  PRIMARY KEY (`codigo`));

-- Tabla trolls

CREATE TABLE `dragones&cavernas`.`trolls` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `vida` INT NOT NULL,
  PRIMARY KEY (`codigo`));
  
  -- Tabla goblins
  
  CREATE TABLE `dragones&cavernas`.`goblins` (
  `codigo` INT NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `vida` INT NOT NULL,
  PRIMARY KEY (`codigo`));
  
  
   CREATE TABLE `dragones&cavernas`.`mago_extermina` (
  `codigo` INT,
  `nombreMago` VARCHAR(30),
  `fecha` DATETIME,
  `oro` INT,
  PRIMARY KEY (`codigo`,`nombreMago`,`fecha`));
  
  
  CREATE TABLE `dragones&cavernas`.`tanque_acaba` (
  `codigo` INT ,
  `nombreTanque` VARCHAR(30) ,
  `fecha` DATETIME,
  `oro` INT,
  PRIMARY KEY (`codigo`,`nombreTanque`,`fecha`));
  
  CREATE TABLE `dragones&cavernas`.`guerrero_extermina` (
  `codigo` INT ,
  `nombreGuerrero` VARCHAR(30) ,
  `fecha` DATETIME,
  `oro` INT,
  PRIMARY KEY (`codigo`,`nombreGuerrero`,`fecha`));
  
  
  
  -- Tabla habilidades de magos
  
  CREATE TABLE `dragones&cavernas`.`habilidadesdemagos` (
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`nombre`));

-- Tabla habilidades de tanques

CREATE TABLE `dragones&cavernas`.`habilidadesdetanques` (
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`nombre`));
  
-- Tabla habilidades de guerreros

CREATE TABLE `dragones&cavernas`.`habilidadesdeguerreros` (
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`nombre`));
  
-- Tabla tiene habilidades mago
  
  CREATE TABLE `dragones&cavernas`.`tienehabilidadesmago` (
  `nombreMago` VARCHAR(30) NOT NULL,
  `nombreHabilidad` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`nombreMago`,`nombreHabilidad`));
  

-- Tabla tiene habilidades tanque 

CREATE TABLE `dragones&cavernas`.`tienehabilidadestanque` (
  `nombreTanque` VARCHAR(30) NOT NULL,
  `nombreHabilidad` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`nombreTanque`,`nombreHabilidad`));
  
  
  -- Tabla tiene habilidades guerrero
  
  CREATE TABLE `dragones&cavernas`.`tienehabilidadesguerrero` (
  `nombreGuerrero` VARCHAR(30) NOT NULL,
  `nombreHabilidad` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`nombreGuerrero`,`nombreHabilidad`));

  -- Tabla porta_baculo
  
  CREATE TABLE `dragones&cavernas`.`porta_baculo` (
  `codigoBaculo` INT ,
  `nombreMago` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoBaculo`,`nombreMago`,`fecha`));
  
-- Tabla porta_hacha

CREATE TABLE `dragones&cavernas`.`porta_hacha` (
  `codigoHachas` INT ,
  `nombreTanque` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoHachas`,`nombreTanque`,`fecha`));

-- Tabla porta_espada

CREATE TABLE `dragones&cavernas`.`porta_espada` (
  `codigoEspada` INT ,
  `nombreGuerrero` VARCHAR(45),
  `fecha` DATETIME ,
   PRIMARY KEY (`codigoEspada`,`nombreGuerrero`,`fecha`));
  

 -- Tabla almacena_baculo
  
  CREATE TABLE `dragones&cavernas`.`almacena_baculo` (
  `codigoBaculo` INT ,
  `nombreMago` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoBaculo`,`nombreMago`,`fecha`));
  
-- Tabla almacena_hacha

CREATE TABLE `dragones&cavernas`.`almacena_hacha` (
  `codigoHachas` INT ,
  `nombreTanque` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoHachas`,`nombreTanque`,`fecha`));

-- Tabla almacena_espada

CREATE TABLE `dragones&cavernas`.`almacena_espada` (
  `codigoEspada` INT ,
  `nombreGuerrero` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoEspada`,`nombreGuerrero`,`fecha`));
  
-- Tabla espadas 

CREATE TABLE `dragones&cavernas`.`espadas` (
  `codigoEspadas` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `daño` INT NOT NULL,
  `peso` INT NOT NULL,
  PRIMARY KEY (`codigoEspadas`));
  

  -- Tabla hachas 
  
  CREATE TABLE `dragones&cavernas`.`hachas` (
  `codigoHachas` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `daño` INT NOT NULL,
  `peso` INT NOT NULL,
  PRIMARY KEY (`codigoHachas`));
  
-- Tabla baculos

  CREATE TABLE `dragones&cavernas`.`baculos` (
  `codigoBaculos` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `daño` INT NOT NULL,
  `peso` INT NOT NULL,
  PRIMARY KEY (`codigoBaculos`));

-- Tabla fabrica espada 

CREATE TABLE `dragones&cavernas`.`fabrica_baculo` (
  `codigoBaculo` INT ,
  `nombreMago` VARCHAR(30) ,
  `nombreForja` VARCHAR(45) ,
  `nombreCiudad` VARCHAR(45),
  `fecha` DATETIME,
  PRIMARY KEY (`codigoBaculo`,`nombreMago`,`nombreForja`,`nombreCiudad`,`fecha`));


-- Tabla fabrica hacha 

CREATE TABLE `dragones&cavernas`.`fabrica_hacha` (
  `codigoHacha` INT ,
  `nombreTanque` VARCHAR(30) ,
  `nombreForja` VARCHAR(45) ,
  `nombreCiudad` VARCHAR(45) ,
  `fecha` DATETIME,
   PRIMARY KEY (`codigoHacha`,`nombreTanque`,`nombreForja`,`nombreCiudad`,`fecha`));
  
  
  -- Tabla fabrica espada
  
  CREATE TABLE `dragones&cavernas`.`fabrica_espada` (
  `codigoEspada` INT ,
  `nombreGuerrero` VARCHAR(30) ,
  `nombreForja` VARCHAR(45) ,
  `nombreCiudad` VARCHAR(45) ,
  `fecha` DATETIME,
  PRIMARY KEY (`codigoEspada`,`nombreGuerrero`,`nombreForja`,`nombreCiudad`,`fecha`));
  
  
  -- Tabla driuda regala pocion a mago
  
  CREATE TABLE `dragones&cavernas`.`druida_regala_mago_pocion` (
  `fecha` DATETIME, 
  `idDruida` INT ,
  `nombreMago` VARCHAR(30),
  PRIMARY KEY(`idDruida`,`nombreMago`));
  
  
  -- Tabla druida regala pcion a tanque
  
  CREATE TABLE `dragones&cavernas`.`druida_regala_Tanque_pocion` (
  `fecha` DATETIME ,
  `idDruida` INT ,
  `nombreTanque` VARCHAR(30),
  PRIMARY KEY(`idDruida`,`nombreTanque`));
  
  -- Tabla druida regala pocion a guerrero
  
  CREATE TABLE `dragones&cavernas`.`druida_regala_guerrero_pocion` (
  `fecha` DATETIME ,
  `idDruida` INT ,
  `nombreGuerrero` VARCHAR(30),
   PRIMARY KEY(`idDruida`,`nombreGuerrero`));
  
  -- Tabla mago mision colectiva 
  
  CREATE TABLE `dragones&cavernas`.`mago_mision_colectiva` (
  `fechaUnion` DATETIME  ,
  `fechaSalida` DATETIME ,
  `idEscuadron` INT  ,
  `nombreMago` VARCHAR(30),
  PRIMARY KEY(`idEscuadron`,`nombreMago`));
  
   -- Tabla tanque mision colectiva 
   
  CREATE TABLE `dragones&cavernas`.`tanque_mision_colectiva` (
  `fechaUnion` DATETIME ,
  `fechaSalida` DATETIME ,
  `idEscuadron` INT ,
  `nombreTanque` VARCHAR(30),
  PRIMARY KEY(`idEscuadron`,`nombreTanque`));
  
   -- Tabla guerrero mision colectiva 
   
  CREATE TABLE `dragones&cavernas`.`guerrero_mision_colectiva` (
    `fechaUnion` DATETIME ,
    `fechaSalida` DATETIME ,
    `idEscuadron` INT ,
    `nombreGuerrero` VARCHAR(30),
    PRIMARY KEY(`idEscuadron`,`nombreGuerrero`)
);


-- gana 

CREATE TABLE `dragones&cavernas`.`gana` (
    `fechaDragon` DATETIME,
    `idEscuadron` INT ,
    `nombre` VARCHAR(250),
    PRIMARY KEY(`fechaDragon`,`idEscuadron`,`nombre`)
);

-- Claves Foraneas

	-- Magos
ALTER TABLE `dragones&cavernas`.`magos` 
ADD CONSTRAINT `mago_jugadorId`
  FOREIGN KEY (`jugadorId`)
  REFERENCES `dragones&cavernas`.`jugadores` (`jugadorId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE;
  
  -- Tanques
  
ALTER TABLE `dragones&cavernas`.`tanques` 
ADD CONSTRAINT `tanque_jugadorId`
  FOREIGN KEY (`jugadorId`)
  REFERENCES `dragones&cavernas`.`jugadores` (`jugadorId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE;
  
  -- Guerreros 
ALTER TABLE `dragones&cavernas`.`guerreros` 
ADD CONSTRAINT `guerrero_jugadorId`
  FOREIGN KEY (`jugadorId`)
  REFERENCES `dragones&cavernas`.`jugadores` (`jugadorId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE;
  
    -- Dragones
ALTER TABLE `dragones&cavernas`.`dragones` 
ADD CONSTRAINT `dragones_desbloqueaDragon`
  FOREIGN KEY (`desbloqueaDragon`)
  REFERENCES `dragones&cavernas`.`dragones` (`nombre`)
  ON DELETE CASCADE;
  
   -- druida_tiene
ALTER TABLE `dragones&cavernas`.`druida_tiene` 
ADD CONSTRAINT `druida_tiene_codigoPocion`
  FOREIGN KEY (`codigoPocion`)
  REFERENCES `dragones&cavernas`.`pociones` (`codigoPocion`)
  ON DELETE CASCADE,
ADD CONSTRAINT `druida_tiene_`
  FOREIGN KEY (`idDruida`)
  REFERENCES `dragones&cavernas`.`druidas` (`idDruida`)
  ON DELETE CASCADE;
  
  -- Tiendas
  
ALTER TABLE `dragones&cavernas`.`tiendas` 
ADD CONSTRAINT `tiendas_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
  
-- Forjas
ALTER TABLE `dragones&cavernas`.`forjas` 
ADD CONSTRAINT `forjas_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
 -- mago_compra
 
ALTER TABLE `dragones&cavernas`.`mago_compra` 
ADD CONSTRAINT `mago_compra_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_compra_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_compra_nombreTienda`
  FOREIGN KEY (`nombreTienda`)
  REFERENCES `dragones&cavernas`.`tiendas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_compra_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
  -- tanque_compra
  
  ALTER TABLE `dragones&cavernas`.`tanque_compra` 
ADD CONSTRAINT `tanque_compra_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_compra_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_compra_nombreTienda`
  FOREIGN KEY (`nombreTienda`)
  REFERENCES `dragones&cavernas`.`tiendas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_compra_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
  -- guerrero_compra
  
  ALTER TABLE `dragones&cavernas`.`guerrero_compra` 
ADD CONSTRAINT `guerrero_compra_dagaId`
  FOREIGN KEY (`dagaId`)
  REFERENCES `dragones&cavernas`.`dagas` (`dagaId`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_compra_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_compra_nombreTienda`
  FOREIGN KEY (`nombreTienda`)
  REFERENCES `dragones&cavernas`.`tiendas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_compra_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
  
 -- tienehabilidadesmago
 
ALTER TABLE `dragones&cavernas`.`tienehabilidadesmago` 
ADD CONSTRAINT `tienehabilidadesmago_nombreHabilidad`
  FOREIGN KEY (`nombreHabilidad`)
  REFERENCES `dragones&cavernas`.`habilidadesdemagos` (`nombre`)
  ON DELETE CASCADE;
  
 -- tienehabilidadestanque
 
ALTER TABLE `dragones&cavernas`.`tienehabilidadestanque` 
ADD CONSTRAINT `tienehabilidadestanque_nombreHabilidad`
  FOREIGN KEY (`nombreHabilidad`)
  REFERENCES `dragones&cavernas`.`habilidadesdetanques` (`nombre`)
  ON DELETE CASCADE;
  
 -- tienehabilidadesguerrero
 
ALTER TABLE `dragones&cavernas`.`tienehabilidadesguerrero` 
ADD CONSTRAINT `tienehabilidadesguerrero_nombreHabilidad`
  FOREIGN KEY (`nombreHabilidad`)
  REFERENCES `dragones&cavernas`.`habilidadesdeguerreros` (`nombre`)
  ON DELETE CASCADE;
  
  --  porta_baculo
  
ALTER TABLE `dragones&cavernas`.`porta_baculo` 
ADD CONSTRAINT `codigoBaculo`
  FOREIGN KEY (`codigoBaculo`)
  REFERENCES `dragones&cavernas`.`baculos` (`codigoBaculos`)
  ON DELETE CASCADE,
ADD CONSTRAINT `porta_baculo_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE;
  
  -- porta_hacha
  
ALTER TABLE `dragones&cavernas`.`porta_hacha` 
ADD CONSTRAINT `codigoHachas`
  FOREIGN KEY (`codigoHachas`)
  REFERENCES `dragones&cavernas`.`hachas` (`codigoHachas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `porta_hacha_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE;

 --  porta_espada
 
ALTER TABLE `dragones&cavernas`.`porta_espada` 
ADD CONSTRAINT `codigoEspada`
  FOREIGN KEY (`codigoEspada`)
  REFERENCES `dragones&cavernas`.`espadas` (`codigoEspadas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `porta_espada_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE;
  
  
  --  almacena_baculo
  
ALTER TABLE `dragones&cavernas`.`almacena_baculo` 
ADD CONSTRAINT `almacena_baculo_codigoBaculo`
  FOREIGN KEY (`codigoBaculo`)
  REFERENCES `dragones&cavernas`.`baculos` (`codigoBaculos`)
  ON DELETE CASCADE,
ADD CONSTRAINT `almacena_baculo_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE;
  
  -- almacena_hacha
  
ALTER TABLE `dragones&cavernas`.`almacena_hacha` 
ADD CONSTRAINT `almacena_hacha_codigoHachas`
  FOREIGN KEY (`codigoHachas`)
  REFERENCES `dragones&cavernas`.`hachas` (`codigoHachas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `almacena_hacha_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE;

 --  almacena_espada
 
ALTER TABLE `dragones&cavernas`.`almacena_espada` 
ADD CONSTRAINT `almacena_espada_codigoEspada`
  FOREIGN KEY (`codigoEspada`)
  REFERENCES `dragones&cavernas`.`espadas` (`codigoEspadas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `almacena_espada_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE;

-- fabrica_baculo

ALTER TABLE `dragones&cavernas`.`fabrica_baculo` 
ADD CONSTRAINT `fabrica_baculo_codigoBaculo`
  FOREIGN KEY (`codigoBaculo`)
  REFERENCES `dragones&cavernas`.`baculos` (`codigoBaculos`)
  ON DELETE CASCADE,
  ADD CONSTRAINT `fabrica_baculo_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_baculo_nombreForja`
  FOREIGN KEY (`nombreForja`)
  REFERENCES `dragones&cavernas`.`forjas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_baculo_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`);

 -- fabrica_hacha
 
 ALTER TABLE `dragones&cavernas`.`fabrica_hacha` 
ADD CONSTRAINT `fabrica_hacha_codigoHacha`
  FOREIGN KEY (`codigoHacha`)
  REFERENCES `dragones&cavernas`.`hachas` (`codigoHachas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_hacha_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_hacha_nombreForja`
  FOREIGN KEY (`nombreForja`)
  REFERENCES `dragones&cavernas`.`forjas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_hacha_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;
  
 -- fabrica_espada
 
ALTER TABLE `dragones&cavernas`.`fabrica_espada` 
ADD CONSTRAINT `fabrica_espada_codigoEspada`
  FOREIGN KEY (`codigoEspada`)
  REFERENCES `dragones&cavernas`.`espadas` (`codigoEspadas`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_espada_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_espada_nombreForja`
  FOREIGN KEY (`nombreForja`)
  REFERENCES `dragones&cavernas`.`forjas` (`nombre`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fabrica_espada_nombreCiudad`
  FOREIGN KEY (`nombreCiudad`)
  REFERENCES `dragones&cavernas`.`ciudades` (`nombre`)
  ON DELETE CASCADE;

-- druida_regala_mago_pocion

  ALTER TABLE `dragones&cavernas`.`druida_regala_mago_pocion` 
ADD CONSTRAINT `druida_regala_mago_pocion_idDruida`
  FOREIGN KEY (`idDruida`)
  REFERENCES `dragones&cavernas`.`druidas` (`idDruida`)
  ON DELETE CASCADE,
ADD CONSTRAINT `druida_regala_mago_pocion_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE;

-- druida_regala_Tanque_pocion
  
    ALTER TABLE `dragones&cavernas`.`druida_regala_Tanque_pocion` 
ADD CONSTRAINT `druida_regala_Tanque_pocion_idDruida`
  FOREIGN KEY (`idDruida`)
  REFERENCES `dragones&cavernas`.`druidas` (`idDruida`)
  ON DELETE CASCADE,
ADD CONSTRAINT `druida_regala_Tanque_pocion_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE;
  
  -- druida_regala_guerrero_pocion
  
ALTER TABLE `dragones&cavernas`.`druida_regala_guerrero_pocion` 
ADD CONSTRAINT `druida_regala_guerrero_pocion_idDruida`
  FOREIGN KEY (`idDruida`)
  REFERENCES `dragones&cavernas`.`druidas` (`idDruida`)
  ON DELETE CASCADE,
ADD CONSTRAINT `druida_regala_guerrero_pocion_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE;
  
--  mago_mision_colectiva

ALTER TABLE `dragones&cavernas`.`mago_mision_colectiva` 
ADD CONSTRAINT `mago_mision_colectiva_idEscuadron`
  FOREIGN KEY (`idEscuadron`)
  REFERENCES `dragones&cavernas`.`escuadrones` (`idEscuadron`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_mision_colectiva_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE;
  
  -- tanque_mision_colectiva
  
  ALTER TABLE `dragones&cavernas`.`tanque_mision_colectiva` 
ADD CONSTRAINT `tanque_mision_colectiva_idEscuadron`
  FOREIGN KEY (`idEscuadron`)
  REFERENCES `dragones&cavernas`.`escuadrones` (`idEscuadron`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_mision_colectiva_nombreTanque`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE;
  
  -- guerrero_mision_colectiva
  
  ALTER TABLE `dragones&cavernas`.`guerrero_mision_colectiva` 
ADD CONSTRAINT `guerrero_mision_colectiva_idEscuadron`
  FOREIGN KEY (`idEscuadron`)
  REFERENCES `dragones&cavernas`.`escuadrones` (`idEscuadron`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_mision_colectiva_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE;
  
  -- gana 
ALTER TABLE `dragones&cavernas`.`gana` 
  ADD CONSTRAINT `gana_idEscuadron`
  FOREIGN KEY (`idEscuadron`)
  REFERENCES `dragones&cavernas`.`escuadrones` (`idEscuadron`)
  ON DELETE CASCADE,
  ADD CONSTRAINT `gana_nombre`
  FOREIGN KEY (`nombre`)
  REFERENCES `dragones&cavernas`.`dragones` (`nombre`)
  ON DELETE CASCADE;

-- mago_extermina

ALTER TABLE `dragones&cavernas`.`mago_extermina` 
ADD CONSTRAINT `mago_extermina_codigo`
  FOREIGN KEY (`codigo`)
  REFERENCES `dragones&cavernas`.`espectros` (`codigo`)
  ON DELETE CASCADE,
ADD CONSTRAINT `mago_extermina_nombreMago`
  FOREIGN KEY (`nombreMago`)
  REFERENCES `dragones&cavernas`.`magos` (`nombre`)
  ON DELETE CASCADE;
  
-- tanque_acaba
ALTER TABLE `dragones&cavernas`.`tanque_acaba` 
ADD CONSTRAINT `tanque_acaba_codigo`
  FOREIGN KEY (`codigo`)
  REFERENCES `dragones&cavernas`.`trolls` (`codigo`)
  ON DELETE CASCADE,
ADD CONSTRAINT `tanque_acaba_nombreMago`
  FOREIGN KEY (`nombreTanque`)
  REFERENCES `dragones&cavernas`.`tanques` (`nombre`)
  ON DELETE CASCADE;
  
-- guerrero_extermina

    ALTER TABLE `dragones&cavernas`.`guerrero_extermina` 
ADD CONSTRAINT `guerrero_extermina_codigo`
  FOREIGN KEY (`codigo`)
  REFERENCES `dragones&cavernas`.`espectros` (`codigo`)
  ON DELETE CASCADE,
ADD CONSTRAINT `guerrero_extermina_nombreGuerrero`
  FOREIGN KEY (`nombreGuerrero`)
  REFERENCES `dragones&cavernas`.`guerreros` (`nombre`)
  ON DELETE CASCADE;