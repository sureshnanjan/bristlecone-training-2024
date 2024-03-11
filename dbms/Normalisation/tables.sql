CREATE SCHEMA `airlinereservations` ;
CREATE TABLE `airlinereservations`.`flight` (
  `flight_code` VARCHAR(50) NOT NULL,
  `airline` VARCHAR(45) NULL,
  PRIMARY KEY (`flight_code`));
  
  CREATE TABLE `airlinereservations`.`leg` (
  `leg_id` INT NOT NULL,
  `arrival_airport` VARCHAR(45) NULL,
  `departure_airport` VARCHAR(45) NULL,
  `arrival_time` VARCHAR(45) NULL,
  `departure_time` VARCHAR(45) NULL,
  `aircraft` VARCHAR(45) NULL,
  PRIMARY KEY (`leg_id`));
  
  CREATE TABLE `airlinereservations`.`airport` (
  `airport_code` INT NOT NULL,
  `airport_name` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`airport_code`));
  
  CREATE TABLE `airlinereservations`.`aircraft` (
  `aircraft_id` INT NOT NULL,
  `aircraft_model` VARCHAR(45) NULL,
  `owned_by_airline` VARCHAR(45) NULL,
  `aircraftcol1` VARCHAR(45) NULL,
  `aircraftcol2` VARCHAR(45) NULL,
  PRIMARY KEY (`aircraft_id`));
  
  CREATE TABLE `airlinereservations`.`aircraft_model` (
  `model_id` INT NOT NULL,
  `manufacturer_model` VARCHAR(45) NULL,
  PRIMARY KEY (`model_id`));
  
  CREATE TABLE `airlinereservations`.`seat_class` (
  `seat_class_id` INT NOT NULL,
  `class_name` VARCHAR(45) NULL,
  PRIMARY KEY (`seat_class_id`));
  
  CREATE TABLE `airlinereservations`.`customer` (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `passport_number` VARCHAR(45) NULL,
  `email_address` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`));
  
  CREATE TABLE `airlinereservations`.`booking` (
  `booking_id` INT NOT NULL,
  `booking_legs` VARCHAR(45) NULL,
  `price_for_each_leg` VARCHAR(45) NULL,
  `airline` VARCHAR(45) NULL,
  `seat_class` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  PRIMARY KEY (`booking_id`));
  
  CREATE TABLE `airlinereservations`.`manufacturer` (
  `manufacturer_id` INT NOT NULL,
  `manufacturer_name` VARCHAR(45) NULL,
  PRIMARY KEY (`manufacturer_id`));
  
  CREATE TABLE `airlinereservations`.`airline` (
  `airline_id` VARCHAR(45) NOT NULL,
  `airline_name` VARCHAR(45) NULL,
  PRIMARY KEY (`airline_id`));
  
  /* Second normal form*/
  use airlinereservations;
  ALTER TABLE flight RENAME COLUMN airline To airline_id;
  desc flight;  
  ALTER TABLE flight DROP COLUMN airline_id;
  
  ALTER TABLE flight
ADD FOREIGN KEY (aircraft_id)
REFERENCES aircraft ( aircraft_id );
  
  