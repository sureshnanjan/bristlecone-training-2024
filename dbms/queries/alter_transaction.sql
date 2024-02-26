ALTER TABLE `training`.`transaction` 
DROP COLUMN `status`,
ADD COLUMN `amount` DECIMAL(2) NOT NULL AFTER `description`;