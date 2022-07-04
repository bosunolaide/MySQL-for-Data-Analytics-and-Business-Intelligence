/*
BETWEEN and NOT BETWEEN keywords are used to return query results in 
a specified interval. They are usually combined with the AND keyword.
Results from BETWEEN would include the specified interval conditions, while
results from NOT BETWEEN will not. 
*/

SELECT *
FROM salaries
WHERE salary BETWEEN '66000' AND '70000';

SELECT *
FROM salaries
WHERE emp_no NOT BETWEEN '10004' AND '10012';

SELECT *
FROM departments
WHERE dept_no BETWEEN 'd003' AND 'd006';