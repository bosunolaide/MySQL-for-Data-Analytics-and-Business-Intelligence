/*
Inner join is used to combine two tables together to return a result set of all the columns in both tables
by joining them using a column (Primary Key) common to both. Inner join will only return non-null values, and 
would leave out of the query result null values.

Syntax:

SELECT 
	table_1.column_name(s), table_2.column_name(s)
FROM
	table_1
INNER JOIN
	table_2 ON table_1.column_name = table_2.column_name;

OR

SELECT 
	t1.column_name, t1.column_name, ..., t2.column_name, ...
FROM
	table_1 t1
INNER JOIN
	table_2 t2 ON t1.column_name = t2.column_name;
*/

SELECT 
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    dept_manager.dept_no,
    employees.hire_date
FROM
    employees
        INNER JOIN
    dept_manager ON employees.emp_no = dept_manager.emp_no
ORDER BY employees.emp_no;
    

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    e.hire_date
FROM
    employees e
        INNER JOIN
    dept_manager d ON e.emp_no = d.emp_no
ORDER BY e.emp_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;