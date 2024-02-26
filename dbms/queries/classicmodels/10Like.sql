/*
The LIKE operator is a logical operator that tests whether a string contains a specified pattern or not.
expression LIKE pattern ESCAPE escape_character
The percentage ( % ) wildcard matches any string of zero or more characters.
The underscore ( _ ) wildcard matches any single character.
Typically, you’ll use the LIKE operator in the WHERE clause of the SELECT , DELETE, and UPDATE statement.
the pattern is not case-sensitive. Therefore, the b% and B% patterns return the same result.
*/
-- starting with a
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstName LIKE 'a%';
-- ending with on
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName LIKE '%on';
-- substring match within the value	
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastname LIKE '%on%';
-- single character match
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstname LIKE 'T_m';
-- negating with not like	
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName NOT LIKE 'B%';
	
-- \ is the default escape character.

SELECT 
    productCode, 
    productName
FROM
    products
WHERE
    productCode LIKE '%\_20%';
	
-- default escape can be changed
SELECT 
    productCode, 
    productName
FROM
    products
WHERE
    productCode LIKE '%$_20%' ESCAPE '$';