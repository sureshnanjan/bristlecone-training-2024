CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sakila`.`customer_list` 
AS select `cu`.`customer_id` AS `ID`,
concat(`cu`.`first_name`,_utf8mb4' ',`cu`.`last_name`) AS `name`,
`a`.`address` AS `address`,
`a`.`postal_code` AS `zip code`,
`a`.`phone` AS `phone`,
`sakila`.`city`.`city` AS `city`,
`sakila`.`country`.`country` AS `country`,
if(`cu`.`active`,_utf8mb4'active',_utf8mb4'') AS `notes`,
`cu`.`store_id` AS `SID` 
from (
(
(`sakila`.`customer` `cu` join `sakila`.`address` `a` on((`cu`.`address_id` = `a`.`address_id`)))
 join `sakila`.`city` on((`a`.`city_id` = `sakila`.`city`.`city_id`))
 ) 
 join `sakila`.`country` on((`sakila`.`city`.`country_id` = `sakila`.`country`.`country_id`))
 );