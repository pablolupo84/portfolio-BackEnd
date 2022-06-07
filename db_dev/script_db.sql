DROP DATABASE IF EXISTS PORTFOLIO;
CREATE DATABASE  IF NOT EXISTS PORTFOLIO;
USE PORTFOLIO ;

-- -----------------------------------------------------
-- Table Persona
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Persona (
  DNI INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Apellido VARCHAR(45) NOT NULL,
  FechaNacimiento DATE NOT NULL,
  Titulo VARCHAR(100) NOT NULL,
  PRIMARY KEY (DNI))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table Domicilio
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Domicilio (
  Persona_DNI INT NOT NULL,
  nombreCalle VARCHAR(45) NOT NULL,
  numero INT NOT NULL,
  localidad VARCHAR(45) NOT NULL,
  provincia VARCHAR(45) NOT NULL,
  -- PRIMARY KEY (Persona_DNI),
  CONSTRAINT fk_Domicilio_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table ExperienciaLaboral
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Experiencia_Laboral (
  Persona_DNI INT NOT NULL,
  nombreEmpresa VARCHAR(45) NOT NULL,
  fechaInicio DATETIME NOT NULL,
  fechaFinal DATETIME NULL,
  tituloPuesto VARCHAR(80) NOT NULL,
  descripcionPuesto VARCHAR(200) NOT NULL,
  CONSTRAINT fk_ExperienciaLaboral_Persona
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table Educacion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Educacion (
  Persona_DNI INT NOT NULL,
  nombreInstitucion VARCHAR(45) NOT NULL,
  carrera VARCHAR(45) NOT NULL,
  fechaInicio DATETIME NOT NULL,
  fechaFinal DATETIME NULL,
  CONSTRAINT fk_Educacion_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table Proyecto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Proyecto (
  Persona_DNI INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  fechaDeRealizacion VARCHAR(45) NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  link VARCHAR(45) NULL,
  CONSTRAINT fk_Proyecto_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table Tecnologia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Tecnologia (
  Persona_DNI INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  dominio double NOT NULL,
  CONSTRAINT fk_Tecnologia_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table Usuarios 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuarios (
  Persona_DNI INT NOT NULL,
  nombreUser VARCHAR(45) NOT NULL,
  passUser VARCHAR(15) NOT NULL,
  CONSTRAINT fk_Tecnologia_Usuarios
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


