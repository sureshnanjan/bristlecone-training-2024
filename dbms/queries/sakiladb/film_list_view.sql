CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sakila`.`film_list` 
AS select `sakila`.`film`.`film_id` AS `FID`,
`sakila`.`film`.`title` AS `title`,
`sakila`.`film`.`description` AS `description`,
`sakila`.`category`.`name` AS `category`,
`sakila`.`film`.`rental_rate` AS `price`,
`sakila`.`film`.`length` AS `length`,
`sakila`.`film`.`rating` AS `rating`,
group_concat(concat(`sakila`.`actor`.`first_name`,_utf8mb4' ',`sakila`.`actor`.`last_name`) separator ', ') AS `actors` 
from (
(((`sakila`.`category` left join `sakila`.`film_category` 
on((`sakila`.`category`.`category_id` = `sakila`.`film_category`.`category_id`))) 
left join `sakila`.`film` 
on((`sakila`.`film_category`.`film_id` = `sakila`.`film`.`film_id`))) 
join `sakila`.`film_actor` on((`sakila`.`film`.`film_id` = `sakila`.`film_actor`.`film_id`))) 
join `sakila`.`actor` on((`sakila`.`film_actor`.`actor_id` = `sakila`.`actor`.`actor_id`))) 
group by `sakila`.`film`.`film_id`,`sakila`.`category`.`name`;
