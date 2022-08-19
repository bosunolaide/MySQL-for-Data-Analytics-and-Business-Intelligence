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