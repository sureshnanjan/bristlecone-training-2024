CREATE SCHEMA `join_activity` ;
use join_activity;
CREATE TABLE `join_activity`.`left` (
  `lt_id` INT NOT NULL,
  `ltData-1` VARCHAR(45) NULL,
  PRIMARY KEY (`lt_id`));
  
  CREATE TABLE `join_activity`.`right` (
  `rt_id` INT NOT NULL,
  `rt_fk` VARCHAR(45) NULL,
  `rt_data-1` VARCHAR(45) NULL,
  PRIMARY KEY (`rt_id`));
  
 select * from join_activity.left;
 
 INSERT INTO `join_activity`.`left` (`lt_id`, `ltData-1`) VALUES ('1', 'data1');
INSERT INTO `join_activity`.`left` (`lt_id`, `ltData-1`) VALUES ('2', 'data2');
INSERT INTO `join_activity`.`left` (`lt_id`, `ltData-1`) VALUES ('3', 'daat2');

select * from join_activity.right;

INSERT INTO `join_activity`.`right` (`rt_id`, `rt_fk`, `rt_data-1`) VALUES ('1', '1', 'rtData1');
INSERT INTO `join_activity`.`right` (`rt_id`, `rt_fk`, `rt_data-1`) VALUES ('2', '1', 'rtData2');
INSERT INTO `join_activity`.`right` (`rt_id`, `rt_fk`, `rt_data-1`) VALUES ('3', '2', 'rtData3');
INSERT INTO `join_activity`.`right` (`rt_id`, `rt_fk`, `rt_data-1`) VALUES ('4', '4', 'rtData4');

SELECT * FROM join_activity.right INNER JOIN join_activity.left ON join_activity.right.rt_fk=join_activity.left.lt_id;

SELECT * FROM join_activity.left LEFT JOIN join_activity.right ON join_activity.right.rt_fk=join_activity.left.lt_id;

SELECT * FROM join_activity.left RIGHT JOIN join_activity.right ON join_activity.right.rt_fk=join_activity.left.lt_id;

SELECT * FROM join_activity.left CROSS JOIN join_activity.right;

  
