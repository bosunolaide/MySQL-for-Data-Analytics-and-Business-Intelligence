/*
More than two tables can be joined in SQL, but the query for joining them must be backed with strong intuition
and a crystal-clear idea of how the tables should be connected. 
*/

/*
 Syntax and Example: Get the first and last names, hire dates, from dates (dates they started departmental 
 management), and departments of all managers
*/

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no;