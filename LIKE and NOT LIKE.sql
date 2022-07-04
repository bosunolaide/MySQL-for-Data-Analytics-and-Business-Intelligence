/*
LIKE and NOT LIKE keywords are used to filter results to be returned from a query 
based on a likely of string characters. Wildcards like % and _ are used to represent 
characters. % is used for a sequence of characters, while _is used for a single character.
*/

SELECT *
FROM employees
WHERE first_name LIKE ('Mark%');

SELECT *
FROM employees
WHERE hire_date LIKE ('2000%');

SELECT *
FROM employees
WHERE emp_no LIKE ('1000_'); 