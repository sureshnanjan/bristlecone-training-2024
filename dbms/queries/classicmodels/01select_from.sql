-- The employees table has eight columns: employeeNumber, lastName, firstName, extension, email, officeCode, -- reportsTo, and jobTitle.
SELECT lastName FROM employees; -- The result of a SELECT statement is called a result set 

SELECT lastName, firstName, jobTitle FROM employees;

SELECT employeeNumber,lastName,
       firstName,
       extension,
       email,
       officeCode,
       reportsTo,
       jobTitle
FROM   employees; -- you can use the asterisk (*) which is the shorthand for all columns