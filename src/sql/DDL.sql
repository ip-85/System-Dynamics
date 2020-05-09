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
-- Table `ERmodelImplementation`.`questionary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`questionary` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`questionary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`question`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`question` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`question` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `questionType` INT NULL,
  `questionary` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `questionType_idx` (`questionType` ASC) VISIBLE,
  INDEX `questionary_idx` (`questionary` ASC) VISIBLE,
  CONSTRAINT `questionType`
    FOREIGN KEY (`questionType`)
    REFERENCES `ERmodelImplementation`.`questionType` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `questionaryId`
    FOREIGN KEY (`questionary`)
    REFERENCES `ERmodelImplementation`.`questionary` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERmodelImplementation`.`responsealternative`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ERmodelImplementation`.`responsealternative` ;

CREATE TABLE IF NOT EXISTS `ERmodelImplementation`.`responsealternative` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `question_idx` (`question` ASC) VISIBLE,
  CONSTRAINT `questionId`
    FOREIGN KEY (`question`)
    REFERENCES `ERmodelImplementation`.`question` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
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
-- Data for table `ERmodelImplementation`.`questionary`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`questionary` (`id`) VALUES (1);
INSERT INTO `ERmodelImplementation`.`questionary` (`id`) VALUES (2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`question`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (1, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (2, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (3, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (4, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (5, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (6, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (7, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (8, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (9, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (10, 1, 1);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (11, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (12, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (13, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (14, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (15, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (16, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (17, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (18, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (19, 1, 2);
INSERT INTO `ERmodelImplementation`.`question` (`id`, `questionType`, `questionary`) VALUES (20, 1, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ERmodelImplementation`.`responsealternative`
-- -----------------------------------------------------
START TRANSACTION;
USE `ERmodelImplementation`;
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (1, 1);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (2, 2);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (3, 3);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (4, 4);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (5, 5);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (6, 6);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (7, 7);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (8, 8);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (9, 9);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (10, 10);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (11, 11);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (12, 12);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (13, 13);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (14, 14);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (15, 15);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (16, 16);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (17, 17);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (18, 18);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (19, 19);
INSERT INTO `ERmodelImplementation`.`responsealternative` (`id`, `question`) VALUES (20, 20);

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
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (11, NULL, NULL, 'question', 'Чи задоволені ви життям у гуртожитку?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (11, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (12, NULL, NULL, 'question', 'Якщо наступного місяця ціна на прожиток у гуртожитку збільшиться...');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (12, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (13, NULL, NULL, 'question', 'Ваш стілець був сломаний,що ви будете робити?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (13, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (14, NULL, NULL, 'question', 'Чи задоволені ви чистотою у гуртожитку?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (14, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (15, NULL, NULL, 'question', 'Послугами якого провайдера ви користуєтеся?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (15, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (16, NULL, NULL, 'question', 'Скільки раз на тиждень ви бачите студентів,що палять цигарки всередині гуртожитку?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (16, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (17, NULL, NULL, 'question', 'Якщо ваші друзі запитають вашу думку про гуртожиток,ви...');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (17, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (18, NULL, NULL, 'question', 'Якщо каштелян попросить вас пофарбувати парка/прибрати на поверсі ви...');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (18, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (19, NULL, NULL, 'question', 'Якщо студенська рада гуртожитку попросять невелику(до 100 грн) плату,для покращення гуртожитку(наприклад диван у коридорі)ви...');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (19, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (20, NULL, NULL, 'question', 'Якщо б у вас з\'явилося бажання зробити ремонт у своїй кімнаті,співпрацювали б ви з каштеляном і завідуючою гуртожитку?');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (20, NULL, NULL, 'questionary', '2');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 11, 'RA0', 'Так');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 11, 'RA1', 'Ні');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 11, 'RA2', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 12, 'RA0', 'Я пійду до завідуючої і запитаю субсідії');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 12, 'RA1', 'Я сплачу');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 12, 'RA2', 'Покину гуртожиток');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 13, 'RA0', 'Придбаю новий за свої кошти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 13, 'RA1', 'Звернуся до каштеляну і попрошу новий стілець');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 13, 'RA2', 'Забронюю візит мастера,щоб він полагодив стілець');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 14, 'RA0', 'Так');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 14, 'RA1', 'Ні');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 15, 'RA0', 'КПІ-Телеком');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 15, 'RA1', 'іншим');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 16, 'RA0', 'Кожного дня');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 16, 'RA1', 'Декілька разів на тиждень');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 16, 'RA2', 'Ніколи');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 17, 'RA0', 'Пораджу гуртожиток');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 17, 'RA1', 'Пораджу утриматися від проживання');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 17, 'RA2', 'Важко відповісти');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 18, 'RA0', 'Відмовлюсь від роботи,тому що вони не мають на це законного права');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 18, 'RA1', 'Виконаєте прохання');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 19, 'RA0', 'Погодитесь');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 19, 'RA1', 'Відмовитесь від пропозиції');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 20, 'RA0', 'Так,залюбки');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, NULL, 20, 'RA1', 'Ні,я їм не довіряю');
INSERT INTO `ERmodelImplementation`.`extra` (`question`, `questionary`, `resposealternative`, `key`, `value`) VALUES (NULL, 2, NULL, 'name', 'Соц. опитування мешканців гуртожитку');

COMMIT;

