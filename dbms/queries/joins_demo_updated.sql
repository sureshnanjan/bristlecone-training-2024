CREATE SCHEMA IF NOT EXISTS `training`;
USE `training`;
DROP TABLE IF EXISTS `left_table`;
DROP TABLE IF EXISTS `right_table`;
CREATE TABLE `left_table` (
  `lt_id` int NOT NULL,
  `lt_data1` varchar(15) DEFAULT NULL,
  `common` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`lt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `right_table` (
  `rt_id` int NOT NULL,
  `lt_id` int DEFAULT NULL,
  `rt_data1` varchar(45) DEFAULT NULL,
  `common` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `training`.`left_table`
(`lt_id`,
`lt_data1`,
`common`)
VALUES
(1,"LT-1","A"),
(2,"LT-2","B"),
(3,"LT-3","C");

INSERT INTO `training`.`right_table`
(`rt_id`,
`lt_id`,
`rt_data1`,
`common`)
VALUES
(1,1,"RT-1","A"),
(2,2,"RT-2","D"),
(3,4,"RT-3","C"),
(4,5,"RT-4","F");

/*
In MySQL, a STRAIGHT_JOIN is a type of join that combines rows from two tables based on a 
related column between them. The STRAIGHT_JOIN keyword is an instruction to the MySQL query 
optimizer that the tables must be joined from left to right in the order they are listed in 
the query.
STRAIGHT_JOIN is similar to JOIN, except that the left table is always read 
before the right table.
*/
-- STRAIGHT_JOIN 
select * from left_table STRAIGHT_JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table STRAIGHT_JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;
/*
The INNER JOIN clause compares each row in table_1 with every row in the table_2 based on the join condition. 
- If rows from both tables cause the join condition to evaluate to TRUE, the INNER JOIN creates a new row whose columns contain all columns of rows from the tables and includes this new row in the result set. 
- If no row between tables causes the join condition to be evaluated to TRUE, the INNER JOIN returns an empty result set
*/
-- Inner Join
select * from left_table INNER JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table INNER JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;
-- CROSS JOIN
select * from left_table CROSS JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table CROSS JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;
-- LEFT JOIN
select * from left_table LEFT JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table LEFT JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;
-- LEFT OUTER JOIN
select * from left_table LEFT OUTER JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table LEFT OUTER JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;
-- RIGHT JOIN
select * from left_table RIGHT JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table RIGHT JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;

-- RIGHT OUTER JOIN
select * from left_table RIGHT OUTER JOIN right_table ON left_table.lt_id = right_table.lt_id;
select * from left_table RIGHT OUTER JOIN right_table ON left_table.lt_id = right_table.lt_id AND 
left_table.common = right_table.common;

-- THE BELOW NATURAL JOINS DONT TAKE A JOIN specification 
-- table_reference NATURAL JOIN 
select * from left_table NATURAL JOIN right_table;
-- table_reference NATURAL INNER JOIN 
select * from left_table NATURAL INNER JOIN right_table;
-- table_reference NATURAL LEFT JOIN
select * from left_table NATURAL LEFT JOIN right_table;
-- table_reference NATURAL LEFT OUTER JOIN
select * from left_table NATURAL LEFT OUTER JOIN right_table;
-- table_reference NATURAL RIGHT JOIN 18
select * from left_table NATURAL RIGHT JOIN right_table;
-- table_reference NATURAL RIGHT OUTER JOIN 17
select * from left_table NATURAL RIGHT OUTER JOIN right_table;






