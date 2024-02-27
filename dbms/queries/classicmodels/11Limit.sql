/*
SELECT 
    select_list
FROM
    table_name
LIMIT [offset,] row_count;
*/
SELECT 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC
LIMIT 5;