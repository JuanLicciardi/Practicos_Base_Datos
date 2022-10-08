-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema JEL_BazarDigital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema JEL_BazarDigital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `JEL_BazarDigital` DEFAULT CHARACTER SET utf8 ;
USE `JEL_BazarDigital` ;

-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`uses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`uses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `use` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`rubros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`rubros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rubro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `price` DECIMAL NULL,
  `description` TEXT NULL,
  `stock` INT NULL,
  `use` INT NULL,
  `rubro` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_products_uses_idx` (`use` ASC) VISIBLE,
  INDEX `fk_products_rubros_idx` (`rubro` ASC) VISIBLE,
  CONSTRAINT `fk_products_uses`
    FOREIGN KEY (`use`)
    REFERENCES `JEL_BazarDigital`.`uses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_rubros`
    FOREIGN KEY (`rubro`)
    REFERENCES `JEL_BazarDigital`.`rubros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`roles` (
  `int` INT NOT NULL AUTO_INCREMENT,
  `rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`int`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`empleados` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `dni` INT NULL,
  `sueldo` DECIMAL NULL,
  `rol` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_empleados_roles_idx` (`rol` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_roles`
    FOREIGN KEY (`rol`)
    REFERENCES `JEL_BazarDigital`.`roles` (`int`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`mediospago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`mediospago` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `metodopago` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`ventas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NULL,
  `total` INT NULL,
  `medioPago_id` INT NULL,
  `comision` INT NULL,
  `empleado_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ventas_mediospago_idx` (`medioPago_id` ASC) VISIBLE,
  INDEX `fk_ventas_empleados_idx` (`empleado_id` ASC) VISIBLE,
  CONSTRAINT `fk_ventas_mediospago`
    FOREIGN KEY (`medioPago_id`)
    REFERENCES `JEL_BazarDigital`.`mediospago` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_empleados`
    FOREIGN KEY (`empleado_id`)
    REFERENCES `JEL_BazarDigital`.`empleados` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `JEL_BazarDigital`.`carrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `JEL_BazarDigital`.`carrito` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `producto_id` INT NULL,
  `ventas_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ventas_productos_idx` (`producto_id` ASC) VISIBLE,
  INDEX `fk_ventas_carrito_idx` (`ventas_id` ASC) VISIBLE,
  CONSTRAINT `fk_ventas_productos`
    FOREIGN KEY (`producto_id`)
    REFERENCES `JEL_BazarDigital`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_carrito`
    FOREIGN KEY (`ventas_id`)
    REFERENCES `JEL_BazarDigital`.`ventas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
