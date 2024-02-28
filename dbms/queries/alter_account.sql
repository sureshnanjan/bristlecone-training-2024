ALTER TABLE `training`.`account` 
DROP COLUMN `account_id`,
ADD COLUMN `account_status_id` INT NOT NULL AFTER `account_type_id`,
ADD COLUMN `date_opened` DATE NOT NULL AFTER `account_status_id`,
ADD COLUMN `date_closed` DATE NULL AFTER `date_opened`,
CHANGE COLUMN `account_number` `account_number` INT NOT NULL FIRST,
CHANGE COLUMN `customer_id` `account_type_id` INT NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`account_number`);
;
