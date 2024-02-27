CREATE TABLE `training`.`customer` (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(25) NULL,
  `last_name` VARCHAR(25) NULL,
  `date_of_birth` DATE NULL,
  `signup_date` DATE NULL,
  `accounts` INT NULL,
  PRIMARY KEY (`customer_id`))
COMMENT = 'Creating activity 1 ';