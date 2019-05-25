-- MySQL Workbench Synchronization
-- Generated: 2019-05-25 18:42
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Чёрный Властелин

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER SCHEMA `theatre`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `theatre`.`Staff` (
  `idStaff` INT(11) NOT NULL AUTO_INCREMENT,
  `Surname` VARCHAR(45) NULL DEFAULT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Middlename` VARCHAR(45) NULL DEFAULT NULL,
  `Passport` VARCHAR(45) NOT NULL,
  `Position` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `Home_phone` VARCHAR(45) NULL DEFAULT NULL,
  `Mobile_phone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idStaff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `theatre`.`Perfomances` (
  `idPerfomance` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Author` VARCHAR(45) NULL DEFAULT NULL,
  `Year` VARCHAR(45) NULL DEFAULT NULL,
  `Genre` VARCHAR(45) NULL DEFAULT NULL,
  `Num_acts` INT(11) NULL DEFAULT NULL,
  `Description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idPerfomance`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `theatre`.`Items` (
  `idItem` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idItem`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `theatre`.`Schedules` (
  `idSchedule` INT(11) NOT NULL AUTO_INCREMENT,
  `Start` VARCHAR(45) NOT NULL,
  `End` VARCHAR(45) NOT NULL,
  `isRepetision` TINYINT(4) NOT NULL,
  `Perfomances_idPerfomance` INT(11) NOT NULL,
  `Cost` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idSchedule`),
  INDEX `fk_Schedules_Perfomances1_idx` (`Perfomances_idPerfomance` ASC) VISIBLE,
  CONSTRAINT `fk_Schedules_Perfomances1`
    FOREIGN KEY (`Perfomances_idPerfomance`)
    REFERENCES `theatre`.`Perfomances` (`idPerfomance`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `theatre`.`P_I` (
  `idP_I` INT(11) NOT NULL AUTO_INCREMENT,
  `Perfomances_idPerfomance` INT(11) NOT NULL,
  `Items_idItem` INT(11) NOT NULL,
  PRIMARY KEY (`idP_I`),
  INDEX `fk_P_I_Perfomances_idx` (`Perfomances_idPerfomance` ASC) VISIBLE,
  INDEX `fk_P_I_Items1_idx` (`Items_idItem` ASC) VISIBLE,
  CONSTRAINT `fk_P_I_Perfomances`
    FOREIGN KEY (`Perfomances_idPerfomance`)
    REFERENCES `theatre`.`Perfomances` (`idPerfomance`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_P_I_Items1`
    FOREIGN KEY (`Items_idItem`)
    REFERENCES `theatre`.`Items` (`idItem`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `theatre`.`S_S` (
  `idS_S` INT(11) NOT NULL AUTO_INCREMENT,
  `Schedules_idSchedule` INT(11) NOT NULL,
  `Staff_idStaff` INT(11) NOT NULL,
  `role` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idS_S`),
  INDEX `fk_S_S_Schedules1_idx` (`Schedules_idSchedule` ASC) VISIBLE,
  INDEX `fk_S_S_Staff1_idx` (`Staff_idStaff` ASC) VISIBLE,
  CONSTRAINT `fk_S_S_Schedules1`
    FOREIGN KEY (`Schedules_idSchedule`)
    REFERENCES `theatre`.`Schedules` (`idSchedule`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_S_S_Staff1`
    FOREIGN KEY (`Staff_idStaff`)
    REFERENCES `theatre`.`Staff` (`idStaff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
