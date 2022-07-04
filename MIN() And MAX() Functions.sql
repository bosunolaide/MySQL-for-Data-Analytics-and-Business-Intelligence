/*
MIN() and MAX() functions returns the minimum and maximum values respectively from 
all non-null records in a numeric column. They do not work on non-numeric columns,
and the (*) argument will not work with them.
*/

SELECT MAX(salary)
FROM salaries;

SELECT MIN(salary)
FROM salaries;

SELECT MIN(emp_no)
FROM employees;

SELECT MAX(emp_no)
FROM employees;