/*
SELECT DISTINCT
    select_list
FROM
    table_name
WHERE 
    search_condition
ORDER BY 
    sort_expression;
*/
SELECT 
    lastname
FROM
    employees
ORDER BY 
    lastname;
-- All Nulls will be removed except one occurrence	
SELECT DISTINCT state
FROM customers;

-- MySQL DISTINCT with multiple columns