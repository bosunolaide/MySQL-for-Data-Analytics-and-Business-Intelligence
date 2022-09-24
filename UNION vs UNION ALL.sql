/*
UNION / UNION ALL is used to combine a few select statements in a single output. It is a tool that can be used to 
unify tables. The same number of columns from each table must be selected. The columns should have the same
name, should be in the same order, and should contain related data types.
UNION ALL Syntax:
SELECT 
	n columns
FROM 
	table_1
UNION ALL SELECT
	n columns
FROM 
	table_2;

UNION Syntax:
SELECT 
	n columns
FROM 
	table_1
UNION SELECT
	n columns
FROM 
	table_2;

*/

-- create employees_dup
drop table if exists employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- duplicate the structure of 'employees' table    
INSERT INTO employees_dup
SELECT 
    e.*
FROM
    employees e
LIMIT 20;

-- Check 
SELECT 
    *
FROM
    employees_dup;
    
-- insert a duplicate of the first row
insert into employees_dup values
('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

-- Check 
SELECT 
    *
FROM
    employees_dup;
    
-- UNION ALL
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
-- UNION
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
/*
UNION VS UNION ALL
When uniting two identically organized tables:
- UNION displays only distinct values in the output.
- UNION uses more MYSQL resources (computational power and storage space), especially when dealing with large
tables.
- UNION ALL displays the duplicate values as well.
*/