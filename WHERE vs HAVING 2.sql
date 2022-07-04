/*
HAVING keyword can not be used with both aggregated and non-aggregated conditions
in a query. When you need to use aggregated functions in a condition, use the 
GROUP BY and HAVING keyword together, and WHERE keyword should be used with only 
general conditions. 
*/

SELECT emp_no
FROM dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;