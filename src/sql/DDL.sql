-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ERmodelImplementation
-- -----------------------------------------------------
-- implementation of ER model
-- 
DROP SCHEMA IF EXISTS `ERmodelImplementation` ;

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
DROP TABLE IF EXISTS `ERmodelImplementation`.`questionType` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`questionType` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `iconURL` VARCHAR(4000) NULL,
  `beforeCreateCallBack` VARCHAR(4000) NULL,
  `afterCreateCallBack` VARCHAR(4000) NULL,
  `onValidateClb` VARCHAR(4000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`question`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`question` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`question` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `questionType` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `questionType_idx` (`questionType` ASC) VISIBLE,
  CONSTRAINT `questionType`
    FOREIGN KEY (`questionType`)
    REFERENCES `ERmodelImplementation`.`questionType` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`questionary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`questionary` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`questionary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`responsealternative`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`responsealternative` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`responsealternative` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`extra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`extra` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`extra` (
  `question` INT NULL DEFAULT NULL,
  `questionary` INT NULL DEFAULT NULL,
  `resposealternative` INT NULL DEFAULT NULL,
  `key` VARCHAR(45) NULL,
  `value` VARCHAR(4000) NULL,
  INDEX `q_idx` (`question` ASC) VISIBLE,
  INDEX `questionary_idx` (`questionary` ASC) VISIBLE,
  INDEX `responsealternative_idx` (`resposealternative` ASC) VISIBLE,
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

-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`questionType`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`questionType` (`id`, `name`, `iconURL`, `beforeCreateCallBack`, `afterCreateCallBack`, `onValidateClb`) VALUES (1, 'Соц. опитування киян', NULL, '{ show (loading); }', '{ show (QuestionType.name); show (...ResponseAlternative); }', '{ check (answer) }');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`question`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (2, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (3, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (4, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (5, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (6, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (7, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (8, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (9, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`) VALUES (10, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`questionary`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`questionary` (`id`) VALUES (1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`responsealternative`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (1);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (2);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (3);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (4);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (5);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (6);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (7);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (8);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (9);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`) VALUES (10);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`extra`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (1, NULL, NULL, 'question', 'Якщо говорити в цілому, то події в Україні розвиваються:');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 1, 'RA0', 'У правильному напрямі;');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 1, 'RA1', 'У неправильному напрямі;');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, 1, NULL, 'name', 'Соц. опитування киян');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (2, NULL, NULL, 'question', 'Як би Ви оцінили зміни, що відбулися у м. Києві за часи міського голови Віталія Кличка?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (2, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 2, 'RA0', 'Зміни відбулися на краще');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 2, 'RA1', 'Нічого не змінилось, все залишилось так, як було раніше');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 2, 'RA2', 'Зміни відбулися на гірше');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 2, 'RA3', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (3, NULL, NULL, 'question', 'Скажіть, будь ласка, чи отримуєте Ви субсидію?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (3, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 3, 'RA0', 'Так');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 3, 'RA1', 'Ні');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (4, NULL, NULL, 'question', 'Скажіть, будь ласка, чи отримуєте Ви пенсію?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (4, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 4, 'RA0', 'Так');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 4, 'RA1', 'Ні');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (5, NULL, NULL, 'question', 'Якщо Ви отримуєте пенсію, то вона порівняно з тією, що була?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (5, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 5, 'RA0', 'Зменшилася');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 5, 'RA1', 'Залишилась на тому ж рівні');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 5, 'RA2', 'Збільшилася');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 5, 'RA3', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (6, NULL, NULL, 'question', 'Коли, на Вашу думку, повинні відбутися вибори міського голови Києва?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (6, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 6, 'RA0', 'Якомога швидше');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 6, 'RA1', 'Весною 2020 року');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 6, 'RA2', 'У жовтні 2020 року відповідно до Конституції');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 6, 'RA3', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (7, NULL, NULL, 'question', 'Якби вибори міського голови м. Києва та депутатів міської ради відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (7, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 7, 'RA0', 'Обов\'язково піду голосувати');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 7, 'RA1', 'Не визначився, але напевно піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 7, 'RA2', 'Не визначився, але напевно не піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 7, 'RA3', 'Не піду голосувати у жодному разі');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (8, NULL, NULL, 'question', 'Чи підтримуєте Ви об\'єднання м. Києва з містами та селищами-супутниками (Бровари, Бориспіль, Вишневе, Ірпінь тощо)?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (8, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 8, 'RA0', 'Повністю підтримую');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 8, 'RA1', 'Скоріше підтримую');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 8, 'RA2', 'Скоріше не підтримую');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 8, 'RA3', 'Взагалі не підтримую');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 8, 'RA4', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (9, NULL, NULL, 'question', 'Якби вибори до Верховної Ради України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (9, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 9, 'RA0', 'Обов\'язково піду голосувати');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 9, 'RA1', 'Не визначився, але напевно піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 9, 'RA2', 'Не визначився, але напевно не піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 9, 'RA3', 'Не піду голосувати у жодному разі');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (10, NULL, NULL, 'question', 'Якби вибори Президента України відбувалися найближчої неділі, чи взяли б Ви участь y голосуванні?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (10, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 10, 'RA0', 'Обов\'язково піду голосувати');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 10, 'RA1', 'Не визначився, але напевно піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 10, 'RA2', 'Не визначився, але напевно не піду');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 10, 'RA3', 'Не піду голосувати у жодному разі');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (1, NULL, NULL, 'questionary', '1');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 1, 'RA2', 'Важко відповісти');

COMMIT;

