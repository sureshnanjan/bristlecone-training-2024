create database dbms_queries;
use dbms_queries;
CREATE TABLE table_1(
t1_pk int NOT NULL,
t1_col1 varchar(200) NOT NULL,
t1_col2 varchar(200) NOT NULL,

PRIMARY KEY (t1_pk)

);
CREATE TABLE table_2(
t1_pk_fk int NOT NULL,
t2_pk varchar(200) NOT NULL,
t2_value_column varchar(200) NOT NULL,

PRIMARY KEY (t2_pk),
FOREIGN KEY (t1_pk_fk) REFERENCES table_1(t1_pk)
);
INSERT INTO table_1(t1_pk,t1_col1,t1_col2) VALUES 
   (1,123455,"boeing 777"),(2,123456,"boeing 747"),
   (3,123457,"airbus A330"),(4,123458,"cessna 172"),
   (5,123459,"embraer 175"),(6,123450,"cirrus sr22");
   
   INSERT INTO table_2(t1_pk_fk,t2_pk,t2_value_column) VALUES 
   (1,"abc","col1"),(2,"def","col2"),
   (4,"ghi","col3");
   
   SELECT *
FROM table_1 a
INNER JOIN table_2 b
ON a.t1_pk = b.t1_pk_fk
ORDER BY a.t1_pk;

SELECT *
FROM table_1 a
 LEFT JOIN table_2 b
ON a.t1_pk = b.t1_pk_fk
ORDER BY a.t1_pk;


SELECT *
FROM table_1 a
RIGHT JOIN table_2 b
ON a.t1_pk = b.t1_pk_fk
ORDER BY a.t1_pk;





