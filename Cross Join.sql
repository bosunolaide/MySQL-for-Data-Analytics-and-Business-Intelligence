/*
A Cross Join takes all the values from a table and joins it with all the values of another table. It connects all
the values of the tables, not just those that match. Mathematically, it is the cartesian product of two or more
sets. It is particularly used when the tables in a database are not well connected. 
*/

# Syntax and Examples:

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

# Display all departments that a manager is currently the head of:

SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

# Join more that two tables using a Cross Join.
SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
		JOIN
	employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

/*Excercise: Use a CROSS JOIN to return a list with all possible combinations
 between managers from the dept_manager table and department number 9.
 */
 
 SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_name;

/*
Return a list with the first 10 employees with all the departments they can be assigned to.
Hint: Don’t use LIMIT; use a WHERE clause.
*/

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name; 