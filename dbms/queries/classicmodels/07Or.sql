-- A OR B
/*
The OR operator combines two Boolean expressions and returns true when either expression is true. Otherwise, it returns false.
MySQL evaluates the OR operator after the AND operator if an expression contains both AND and OR operators.
Use parentheses to change the order of evaluation.
*/

SELECT   
	customername, 
	country, 
	creditLimit
FROM   
	customers
WHERE(country = 'USA'
		OR country = 'France')
	  AND creditlimit > 100000;
	  
SELECT   
	customername, 
	country, 
	creditLimit
FROM   
	customers
WHERE country = 'USA'
	  OR country = 'France'
	  AND creditlimit > 100000;