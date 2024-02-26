CREATE TABLE `training`.`transaction` (
  `transaction_id` INT NOT NULL,
  `transaction_datetime` datetime NULL,
  `status` VARCHAR(10) NULL,
  `from_account` int NULL,
  `to_account` int NULL,
  `description` VARCHAR(50) NULL,
  PRIMARY KEY (`transaction_id`))
COMMENT = 'Creating activity 1 ';

