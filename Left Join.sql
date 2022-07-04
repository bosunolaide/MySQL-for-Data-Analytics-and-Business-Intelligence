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