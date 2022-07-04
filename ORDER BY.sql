/*
ORDER BY clause is used to return query results ordered based on a specified column other 
than the default column, which is usually the primary key column. YOu can also order the 
results by more than one column, separated by commas. You can use the ASC (for ascending)
or DESC(for descending) keyword to order results in a desired manner, and it can be applied
to both strings and numeric data. If not specified, results would be ordered in an ascending 
order by default.
*/

SELECT *
FROM employees 
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name ASC;

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;