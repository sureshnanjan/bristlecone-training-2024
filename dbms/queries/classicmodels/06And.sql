-- Use the AND operator to form conditions in the WHERE clause of the SELECT statement.
SELECT 1 AND 0, 0 AND 1, 0 AND 0, 0 AND NULL;
/*
When evaluating an expression that contains the AND operator, MySQL stops evaluating the remaining parts of the expression as soon as it can determine the result.
This is called short-circuit evaluation. In other words, the AND operator is short-circuited.
*/
SELECT 
    customername, 
    country, 
    state
FROM
    customers
WHERE
    country = 'USA' AND 
    state = 'CA';
-- combining multiple evaluations with and
SELECT 
    customername, 
    country, 
    state, 
    creditlimit
FROM
    customers
WHERE
    country = 'USA' AND 
    state = 'CA' AND 
    creditlimit > 100000;