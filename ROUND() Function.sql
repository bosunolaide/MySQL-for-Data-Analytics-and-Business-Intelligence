/*
The ROUND() function is used to round up a returned numeric value from a query to a 
specified decimal point. Works only on numeric values.
*/

SELECT ROUND(AVG(salary), 2)
FROM salaries;

SELECT ROUND(AVG(salary), 2)
FROM salaries
WHERE from_date > '1997-01-01';