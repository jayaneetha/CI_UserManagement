-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema CI_UserManagement
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CI_UserManagement
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CI_UserManagement` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `CI_UserManagement` ;

-- -----------------------------------------------------
-- Table `CI_UserManagement`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CI_UserManagement`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CI_UserManagement`.`log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CI_UserManagement`.`log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `timestamp` DATETIME NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `log_users_idx` (`user_id` ASC),
  CONSTRAINT `log_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `CI_UserManagement`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
