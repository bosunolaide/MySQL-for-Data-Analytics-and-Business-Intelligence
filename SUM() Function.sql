/*
The SUM() function is used to calculate the sum of all non-null records in a numeric column
of a database table.

This function will not work on non-numeric columns.

The * argument in parentheses which worked in COUNT(*) will not work in SUM(*). 
*/

SELECT SUM(salary)
FROM salaries;

SELECT SUM(salary)
FROM salaries
WHERE from_date > '1997-01-01';