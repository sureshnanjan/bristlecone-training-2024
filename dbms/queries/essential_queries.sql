-- A query normally consists of an SQL statement followed by a semicolon
SELECT VERSION(), CURRENT_DATE;
-- `training`.`customer`
use sakila;
select * from `training`.`customer`;
use training; select * from `customer`;
SELECT SIN(PI()/4) , (4+1)*5; -- this is a comment
-- You can even enter multiple statements on a single line. Just end each one with a semicolon:
SELECT VERSION(); SELECT NOW();
-- You can see at any time which database is currently selected using SELECT DATABASE().
SELECT DATABASE() as "Suresh Query";
-- seeing available tables
show tables;
-- To verify that your table was created the way you expected, use a DESCRIBE statement:
describe account;
-- loading and polulation data to tables
LOAD DATA LOCAL INFILE "C:,rainings-2021\Vendors\EduRamp\bristlecone-training-2024\dbms\data\customer_data.txt" INTO TABLE customer;
-- Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides
-- If both the column list and the VALUES list are empty, INSERT creates a row with each column set to its default value:
INSERT INTO account() VALUES(); -- Error Code: 1364. Field 'account_id' doesn't have a default value
INSERT INTO account (account_id,customer_id,account_number) 
VALUES (2,2,56789),(3,3,98765),(4,4,23456);
select account_id as "Primary" from account;
 -- create schema name
 -- create database name
 -- Error Code: 2068. LOAD DATA LOCAL INFILE file request rejected due to restrictions on access.

-- CREATE DATABASE [IF NOT EXISTS] db_name
-- CREATE SCHEMA  [IF NOT EXISTS] db_name
-- CREATE SCHEMA db_name
SET GLOBAL local_infile=1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

insert into customer(customer_id, first_name, last_name, date_of_birth, signup_date, accounts)
values (1,'Test','User0','1976-04-01','2024-02-23',NULL),
(2,'Test','User1','1990-03-02','2024-02-23',NULL),
(3,'Test','User2','1980-02-03','2024-02-23', NULL),
(4,'Test','User3','1970-01-04','2024-02-23',NUll);
-- call suresh_procedure()  Error Code: 1305. PROCEDURE training.suresh_procedure does not exist
call populate('training','customer',500,"N");

-- SHOW CREATE USER 'suresh'
ALTER USER 'suresh' IDENTIFIED BY 'MysComPass';
flush privileges;




