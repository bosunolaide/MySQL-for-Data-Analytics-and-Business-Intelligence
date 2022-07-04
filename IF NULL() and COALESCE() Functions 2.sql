/*
IFNULL() and COALESCE functions are both used in SQL to help with null values in the data records.
You can use both functions to fill the null records with values you want.
IFNULL can only support two parameters, while COALESCE can support any amount of parameters.
They do not make any modification to the data set, what they simply do is to create an output where 
certain data values appear in place of null values.
*/

/*Syntax for IFNULL:

IFNULL(expression_1, expression_2)

If expression_1 is not null, then it is returned. If it is null, then expression_2 is returned. The returned 
value is printed in the column of the output.

*/

SELECT dept_no,
IFNULL(dept_name, 'Department name not provided') AS dept_name
FROM departments_dup;

SELECT 
	IFNULL(dept_no,'N/A') AS dept_no, 
	IFNULL(dept_name, 'Department name not provided') AS dept_name,
	COALESCE(dept_no, dept_name) AS dept_info
FROM 
	departments_dup
ORDER BY dept_no ASC;

/*
Syntax for COALESCE:

COALESCE(expression_1,expression_2,...,expression_N)

This will return a single value from the parameters in parentheses, and it will be the first non_null value
of the list, reading the values from left to right. If it has only two parameters, it will function just like
IFNULL().

*/

SELECT *
FROM departments_dup
ORDER BY dept_no;

SELECT dept_no, dept_name,
COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM departments_dup
ORDER BY dept_no ASC;

-- Use COALESCE() to prototype and visualize an hypothetical column while building your table/database.

SELECT dept_no, dept_name,
COALESCE('department manager name') AS fake_col
FROM departments_dup;