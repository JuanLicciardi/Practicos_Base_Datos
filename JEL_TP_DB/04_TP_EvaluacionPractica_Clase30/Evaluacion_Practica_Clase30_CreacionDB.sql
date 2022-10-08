-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DB_Clase30_Entregable
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DB_Clase30_Entregable
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DB_Clase30_Entregable` DEFAULT CHARACTER SET utf8 ;
USE `DB_Clase30_Entregable` ;

-- -----------------------------------------------------
-- Table `DB_Clase30_Entregable`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_Clase30_Entregable`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_Clase30_Entregable`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_Clase30_Entregable`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_Clase30_Entregable`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_Clase30_Entregable`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fecha_creacion` TIMESTAMP NULL,
  `fecha_modificacion` TIMESTAMP NULL,
  `eliminacion` TINYINT NOT NULL DEFAULT 1 COMMENT 'El valor de \"1\"  indica que fue creada y que puede eliminarse es creado por defecto\nEl valor de 0 indica que no puede eliminarse',
  `titulo` VARCHAR(100) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `usuario_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notas_usuarios_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_notas_categorias_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_notas_usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `DB_Clase30_Entregable`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_categorias`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `DB_Clase30_Entregable`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
