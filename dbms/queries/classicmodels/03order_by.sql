-- SELECT select_list FROM table_name ORDER BY column1 [ASC|DESC] [, column2 [ASC|DESC]} ...;
-- SELECT col1,col2 FROM customers ORDER BY contactLastname ASC
-- SELECT col1,col2 FROM customers ORDER BY contactLastname DESC
-- SELECT col1,col2 FROM customers ORDER BY contactLastname DESC , col2 ASC;


SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname DESC, contactFirstName DESC;
--  
SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  SUBSTRING(contactLastname,4,4); 
  -- contactFirstname ASC;
-- 
SELECT 
  orderNumber, 
  orderlinenumber, 
  quantityOrdered,
  priceEach ,
  quantityOrdered * priceEach As Price
FROM 
  orderdetails 
ORDER BY 
  -- quantityOrdered  * priceEach DESC;
  Price DESC;
-- Using column alias
SELECT 
  orderNumber, 
  orderLineNumber, 
  quantityOrdered * priceEach AS subtotal 
FROM 
  orderdetails 
ORDER BY 
  subtotal DESC;
-- Using MySQL ORDER BY clause to sort data using a custom list

SELECT 
  orderNumber, 
  status 
FROM 
  orders 
ORDER BY 
  FIELD(
    status,
    'Cancelled',
    'In Process', 
    'On Hold', 
     'Resolved', 
    'Disputed', 
    'Shipped'
  );
  
select FIELD(5,1,2,3);

select SUBSTRING("SureshNanjan",4,4);
  
-- NULL in result
SELECT 
  firstName, 
  lastName, 
  reportsTo 
FROM 
  employees 
ORDER BY 
  reportsTo DESC;
