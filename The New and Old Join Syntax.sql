/*
Using the WHERE clause, tables can be joined to give same results like and INNER JOIN would. This can be applied 
to join more than two tables. Though the output may be identical, using WHERE instead of JOIN is outdated, and 
the computation is time-consuming. The Join Syntax allows for connection between tables to be easily modified.
The syntax for this is:

SELECT 
	t1.column_name, t1.column_name, ..., t2.column_name, ...
FROM 
	table_1 t1,
	table_2 t2,
WHERE
	t1.column_name = t2.column_name;
*/


SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
	departments_dup d 
WHERE m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Using WHERE clause:
SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no
ORDER BY e.emp_no;

# Using New Join Syntax:
SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
ORDER BY e.emp_no;