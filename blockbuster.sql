-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sqlproject
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sqlproject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sqlproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema blockbuster
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema blockbuster
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `blockbuster` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sqlproject` ;

-- -----------------------------------------------------
-- Table `sqlproject`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`actors` (
  `actor_id` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`category` (
  `category_id` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`customer` (
  `customer_id INT` DOUBLE NULL DEFAULT NULL,
  `name` DOUBLE NULL DEFAULT NULL,
  `email` DOUBLE NULL DEFAULT NULL,
  `zip` DOUBLE NULL DEFAULT NULL,
  `rental_history` DOUBLE NULL DEFAULT NULL,
  `age` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`film` (
  `film_id` BIGINT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` BIGINT NULL DEFAULT NULL,
  `language_id` BIGINT NULL DEFAULT NULL,
  `rental_duration` BIGINT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `length` BIGINT NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `language_id INT` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`film_has_language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`film_has_language` (
  `film_id INT` DOUBLE NULL DEFAULT NULL,
  `language_id INT` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`inventory` (
  `inventory_id` BIGINT NULL DEFAULT NULL,
  `film_id` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`language` (
  `language_id` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`old_hdd` (
  `title` TEXT NULL DEFAULT NULL,
  `actor_id` BIGINT NULL DEFAULT NULL,
  `film_id` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`rental` (
  `rental_id` BIGINT NULL DEFAULT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `inventory_id` BIGINT NULL DEFAULT NULL,
  `customer_id` BIGINT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`rental_has_customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`rental_has_customer` (
  `rental_id INT` DOUBLE NULL DEFAULT NULL,
  `customer_id INT` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`staff` (
  `staff_id INT` DOUBLE NULL DEFAULT NULL,
  `name` DOUBLE NULL DEFAULT NULL,
  `tlf` DOUBLE NULL DEFAULT NULL,
  `adress` DOUBLE NULL DEFAULT NULL,
  `ss_number` DOUBLE NULL DEFAULT NULL,
  `bank_data` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sqlproject`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sqlproject`.`store` (
  `store_id INT` DOUBLE NULL DEFAULT NULL,
  `rent` DOUBLE NULL DEFAULT NULL,
  `employee_salary` DOUBLE NULL DEFAULT NULL,
  `staff_id INT` DOUBLE NULL DEFAULT NULL,
  `maintenance` DOUBLE NULL DEFAULT NULL,
  `insurance` DOUBLE NULL DEFAULT NULL,
  `commercials` DOUBLE NULL DEFAULT NULL,
  `purchase` DOUBLE NULL DEFAULT NULL,
  `tech` DOUBLE NULL DEFAULT NULL,
  `taxes` DOUBLE NULL DEFAULT NULL,
  `inventory_id INT` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `blockbuster` ;

-- -----------------------------------------------------
-- Table `blockbuster`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`actors` (
  `actor_id` BIGINT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`category` (
  `category_id` BIGINT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`customer` (
  `customer_id` DOUBLE NOT NULL,
  `name` DOUBLE NULL DEFAULT NULL,
  `email` DOUBLE NULL DEFAULT NULL,
  `zip` DOUBLE NULL DEFAULT NULL,
  `rental_history` DOUBLE NULL DEFAULT NULL,
  `age` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`film` (
  `film_id` BIGINT NOT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` BIGINT NULL DEFAULT NULL,
  `language_id` BIGINT NULL DEFAULT NULL,
  `rental_duration` BIGINT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `length` BIGINT NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `category_id` BIGINT NOT NULL,
  PRIMARY KEY (`film_id`, `category_id`),
  INDEX `fk_film_category1_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `blockbuster`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`language` (
  `language_id` BIGINT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`film_has_language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`film_has_language` (
  `film_id` BIGINT NOT NULL,
  `language_id` BIGINT NOT NULL,
  PRIMARY KEY (`language_id`, `film_id`),
  INDEX `fk_film_has_language_language1_idx` (`language_id` ASC) VISIBLE,
  INDEX `fk_film_has_language_film1_idx` (`film_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_has_language_language1`
    FOREIGN KEY (`language_id`)
    REFERENCES `blockbuster`.`language` (`language_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_film_has_language_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`inventory` (
  `inventory_id` BIGINT NOT NULL,
  `film_id` BIGINT NOT NULL,
  PRIMARY KEY (`inventory_id`, `film_id`),
  INDEX `fk_inventory_film1_idx` (`film_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`old_hdd` (
  `actor_id` BIGINT NOT NULL,
  `film_id` BIGINT NOT NULL,
  PRIMARY KEY (`actor_id`, `film_id`),
  INDEX `fk_old_hdd_film1_idx` (`film_id` ASC) VISIBLE,
  INDEX `fk_old_hdd_actors_idx` (`actor_id` ASC) VISIBLE,
  CONSTRAINT `fk_old_hdd_actors`
    FOREIGN KEY (`actor_id`)
    REFERENCES `blockbuster`.`actors` (`actor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_old_hdd_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`rental` (
  `rental_id` BIGINT NOT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `inventory_id` BIGINT NULL DEFAULT NULL,
  `customer_id` BIGINT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`rental_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`rental_has_customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`rental_has_customer` (
  `rental_id` DOUBLE NULL DEFAULT NULL,
  `customer_id` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`staff` (
  `staff_id` DOUBLE NOT NULL,
  `name` DOUBLE NULL DEFAULT NULL,
  `tlf` DOUBLE NULL DEFAULT NULL,
  `adress` DOUBLE NULL DEFAULT NULL,
  `ss_number` DOUBLE NULL DEFAULT NULL,
  `bank_data` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`store` (
  `store_id` DOUBLE NOT NULL,
  `rent` DOUBLE NULL DEFAULT NULL,
  `employee_salary` DOUBLE NULL DEFAULT NULL,
  `staff_id` DOUBLE NULL DEFAULT NULL,
  `maintenance` DOUBLE NULL DEFAULT NULL,
  `insurance` DOUBLE NULL DEFAULT NULL,
  `commercials` DOUBLE NULL DEFAULT NULL,
  `purchase` DOUBLE NULL DEFAULT NULL,
  `tech` DOUBLE NULL DEFAULT NULL,
  `taxes` DOUBLE NULL DEFAULT NULL,
  `inventory_id` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE `blockbuster`.`actors`
  ADD PRIMARY KEY (`actor_id`)
;

ALTER TABLE `blockbuster`.`film`
  ADD PRIMARY KEY (`film_id`, `language_id`);
ALTER TABLE `blockbuster`.`film`
	ADD CONSTRAINT `fk_film_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `blockbuster`.`language` (`language_id`)
;

ALTER TABLE  `blockbuster`.`old_hdd`
  ADD PRIMARY KEY (`actor_id`, `film_id`);
ALTER TABLE  `blockbuster`.`old_hdd`
  ADD CONSTRAINT `fk_old_hdd_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`);
ALTER TABLE  `blockbuster`.`old_hdd`
  ADD CONSTRAINT `fk_old_hdd_actors`
    FOREIGN KEY (`actor_id`)
    REFERENCES `blockbuster`.`actors` (`actor_id`)
    
    ;

ALTER TABLE `blockbuster`.`category`
  ADD PRIMARY KEY (`category_id`);

;

ALTER TABLE `blockbuster`.`language`
  ADD PRIMARY KEY (`language_id`);

;

ALTER TABLE  `blockbuster`.`film_has_language`
  ADD PRIMARY KEY (`film_id`, `language_id`);
ALTER TABLE `blockbuster`.`film_has_language`
  ADD CONSTRAINT `fk_film_has_language_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`);
ALTER TABLE  `blockbuster`.`film_has_language`
  ADD CONSTRAINT `fk_film_has_language_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `blockbuster`.`language` (`language_id`);
;

ALTER TABLE  `blockbuster`.`inventory`
  ADD PRIMARY KEY (`inventory_id`, `film_id`);
ALTER TABLE `blockbuster`.`inventory`
  ADD CONSTRAINT `fk_inventory_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `blockbuster`.`film` (`film_id`);



