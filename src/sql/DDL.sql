-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ERmodelImplementation
-- -----------------------------------------------------
-- implementation of ER model
-- 

-- -----------------------------------------------------
-- Schema ERmodelImplementation
--
-- implementation of ER model
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ERmodelImplementation` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `ERmodelImplementation` ;

-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`questionType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`questionType` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `iconURL` VARCHAR(45) NULL,
  `beforeCreateCallBack` VARCHAR(45) NULL,
  `afterCreateCallBack` VARCHAR(45) NULL,
  `onValidateClb` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`question`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`question` (
  `id` INT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `questionType`
    FOREIGN KEY (`id`)
    REFERENCES `ERmodelImplementation`.`questionType` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`questionary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`questionary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`responsealternative`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`responsealternative` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`extra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`extra` (
  `question` INT NULL DEFAULT NULL,
  `questionary` INT NULL DEFAULT NULL,
  `resposealternative` INT NULL DEFAULT NULL,
  `key` VARCHAR(45) NULL,
  `value` VARCHAR(45) NULL,
  INDEX `q_idx` (`question` ASC) VISIBLE,
  INDEX `questionary_idx` (`questionary` ASC) VISIBLE,
  INDEX `responsealternative_idx` (`resposealternative` ASC) VISIBLE,
  UNIQUE INDEX `resposealternative_UNIQUE` (`resposealternative` ASC) VISIBLE,
  UNIQUE INDEX `questionary_UNIQUE` (`questionary` ASC) VISIBLE,
  UNIQUE INDEX `question_UNIQUE` (`question` ASC) VISIBLE,
  CONSTRAINT `question`
    FOREIGN KEY (`question`)
    REFERENCES `ERmodelImplementation`.`question` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `questionary`
    FOREIGN KEY (`questionary`)
    REFERENCES `ERmodelImplementation`.`questionary` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `responsealternative`
    FOREIGN KEY (`resposealternative`)
    REFERENCES `ERmodelImplementation`.`responsealternative` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
