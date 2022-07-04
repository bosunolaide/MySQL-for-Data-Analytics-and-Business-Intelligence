/*
Duplicate rows can occur in the dataset at any time, and the best way to treat that is to
use a GROUP BY statement in the query on the row that should have distinct values. 
*/

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY emp_no
ORDER BY dept_no;