/*
The AVG() function is used to calculate the average of non-null numeric records in a column
of a database table. Works only on numeric values, the (*) argument will not work with it.
*/

SELECT AVG(salary)
FROM salaries;

SELECT AVG(salary)
FROM salaries
WHERE from_date > '1997-01-01';