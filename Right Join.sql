/*
Right Join, also called Right Outer Join is used to join two tables on the column common to both, and the returned result set would be
all records common to both table, plus all records from the table on the right. The order in which the tables to be joined is
listed matters, as the second table to be listed becomes the one on the right. It is an example of one-to-many relationships in MYSQL
*/

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY emp_no
ORDER BY dept_no;

/*
If the order of table is inverted in a Left Join, it will work same way as a RIGHT JOIN.
*/

SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
GROUP BY emp_no
ORDER BY dept_no;
