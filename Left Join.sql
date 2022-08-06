/*
Left Join, also called Left Outer Join is used to join two tables on the column common to both, and the returned result set would be
all records common to both table, plus all records from the table on the left. The order in which the tables to be joined is
listed matters, as the first table to be listed becomes the one on the left. It is an example of one-to-many relationships in MYSQL
*/

/* 
DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';

DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';

insert into dept_manager_dup
values ('110228', 'd003', '1992-03-21', '9999-01-01');

insert into departments_dup
values ('d009', 'Customer Service'); 
*/

/*
SELECT 
	t1.column_name, t1.column_name, ..., t2.column_name, ...
FROM
	table_1 t1
LEFT JOIN
	table_2 t2 ON t1.column_name = t2.column_name;

*/

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY emp_no
ORDER BY dept_no;


SELECT 
	e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
FROM 
	employees e
		LEFT JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
WHERE e.last_name = 'Markovitch'    
ORDER BY dm.dept_no DESC, e.emp_no;