/*
Aliases (AS) are used to rename the output headings of query results in order to 
give a clearer understanding of the returned result.
*/

SELECT first_name, COUNT(first_name) AS names_count
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;

SELECT salary, COUNT(emp_no) AS emps_with_same_salary
FROM salaries
WHERE salary > 80000
GROUP BY salary
ORDER BY salary;