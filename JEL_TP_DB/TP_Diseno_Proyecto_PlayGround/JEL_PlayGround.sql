-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema JEL_Playground_TP
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema JEL_Playground_TP
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `JEL_Playground_TP` DEFAULT CHARACTER SET utf8 ;
USE `JEL_Playground_TP` ;

-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rol` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `categoria_id` INT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_usuarios_categorias_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_categorias`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `JEL_Playground_TP`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`cursos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `fecha_Inicio` DATE NOT NULL,
  `fecha_final` DATE NOT NULL,
  `cupo` INT NULL DEFAULT 30,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`unidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`unidades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `descripcio` TEXT NULL,
  `fecha_Inicio` DATE NULL,
  `curso_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_unidades_cursos_idx` (`curso_id` ASC) VISIBLE,
  CONSTRAINT `fk_unidades_cursos`
    FOREIGN KEY (`curso_id`)
    REFERENCES `JEL_Playground_TP`.`cursos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`inscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`inscripciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cursos_id` INT NULL,
  `usuarios_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_inscripciones_usuarios_idx` (`usuarios_id` ASC) VISIBLE,
  INDEX `fk_inscripciones_cursos_idx` (`cursos_id` ASC) VISIBLE,
  CONSTRAINT `fk_inscripciones_usuarios`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `JEL_Playground_TP`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscripciones_cursos`
    FOREIGN KEY (`cursos_id`)
    REFERENCES `JEL_Playground_TP`.`cursos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`clases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`clases` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `descripcion` TEXT NULL,
  `fecha_inicio` DATE NULL,
  `visibilidad` TINYINT NULL,
  `unidades_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_clases_unidades_idx` (`unidades_id` ASC) VISIBLE,
  CONSTRAINT `fk_clases_unidades`
    FOREIGN KEY (`unidades_id`)
    REFERENCES `JEL_Playground_TP`.`unidades` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`tipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`tipos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_Playground_TP`.`bloques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_Playground_TP`.`bloques` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulos` VARCHAR(45) NOT NULL,
  `visibilidad` TINYINT NULL DEFAULT 0,
  `contenido` TEXT NULL,
  `clase_id` INT NOT NULL,
  `tipo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_bloques_clases_idx` (`clase_id` ASC) VISIBLE,
  INDEX `fk_bloques_tipos_idx` (`tipo_id` ASC) VISIBLE,
  CONSTRAINT `fk_bloques_clases`
    FOREIGN KEY (`clase_id`)
    REFERENCES `JEL_Playground_TP`.`clases` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bloques_tipos`
    FOREIGN KEY (`tipo_id`)
    REFERENCES `JEL_Playground_TP`.`tipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
