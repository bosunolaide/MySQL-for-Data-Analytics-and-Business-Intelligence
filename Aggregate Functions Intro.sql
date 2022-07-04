/*
Aggregate functions are functions used to perform several
summary statistical operations on data. They are usually 
applied on multiple rows of a column in a table, and they 
return output of a value. The ignore null values, unless 
told not to. Some of them are:
 
COUNT() = to count number of occurence of non-null records in a column
SUM() = to calculate the sum of non-null records in a column
AVG() = to calculate the average of non-null records in a column
ROUND() = to round up a returned numeric value from a query to a specified decimal point
MIN() = returns the minimum value in the entire column
MAX() = returns the maximum value in the entire column

*/

SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= '100000';
    
SELECT 
    COUNT(*)
FROM
    dept_manager;
    
SELECT 
    COUNT(DISTINCT last_name)
FROM
    employees;