/*
HAVING keyword is frequently implemented with the GROUP BY keyword, and it is used
to refine the output from records that do not satisfy a certain condition. It is 
like WHERE keyword, but applied to the GROUP BY block. After HAVING keyword, an 
aggregate function can be used, which is not possible for a WHERE keyword.

Syntax:

SELECT column_name(s)
FROM table_name
WHERE conditions
GROUP BY column_name(s)
HAVING conditions
ORDER BY column_name(s);

*/

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

SELECT 
	emp_no, AVG(salary) AS average_salary
FROM
	salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

