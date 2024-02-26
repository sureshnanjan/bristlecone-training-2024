-- The IN operator allows you to determine if a value matches any value in a list of -- values.
-- value IN (value1, value2, value3,...)
/*
First, specify the value to test on the left side of the IN operator. The value can be a column or an expression.
Second, specify a comma-separated list of values to match in the parentheses.

Use the IN operator to check if a value is in a set of values.
Use the IN operator to form a condition for the WHERE clause.
*/

SELECT 1 IN (1,2,3); -- returns 1 because 1 is in the list:
SELECT 4 IN (1,2,3); -- returns 0 because 4 is not in the list:

SELECT 
    officeCode, 
    city, 
    phone, 
    country
FROM
    offices
WHERE
    country IN ('USA' , 'France');
	
-- The NOT operator negates the IN operator:
SELECT 1 NOT IN (1,2,3); 

SELECT 
    officeCode, 
    city, 
    phone
FROM
    offices
WHERE
    country NOT IN ('USA' , 'France')
ORDER BY 
    city;

	
