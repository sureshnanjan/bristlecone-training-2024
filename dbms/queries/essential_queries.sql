-- A query normally consists of an SQL statement followed by a semicolon
SELECT VERSION(), CURRENT_DATE;
-- 
SELECT SIN(PI()/4) as SINE, (4+1)*5 as Expression;
-- You can even enter multiple statements on a single line. Just end each one with a semicolon:
SELECT VERSION(); SELECT NOW();
-- You can see at any time which database is currently selected using SELECT DATABASE().
SELECT DATABASE();
-- seeing available tables
show tables;
-- To verify that your table was created the way you expected, use a DESCRIBE statement:
describe account;
-- loading and polulation data to tables
LOAD DATA LOCAL INFILE "C:\Trainings-2021\Vendors\EduRamp\bristlecone-training-2024\dbms\data\customer_data.txt" INTO TABLE customer;
-- Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides
-- If both the column list and the VALUES list are empty, INSERT creates a row with each column set to its default value:
INSERT INTO account() VALUES(); -- Error Code: 1364. Field 'account_id' doesn't have a default value
INSERT INTO account (account_id,customer_id,account_number) 
VALUES(1,1,12345);
