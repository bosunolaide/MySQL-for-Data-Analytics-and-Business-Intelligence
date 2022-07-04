/* 
INSERT statement is used to insert new records into existing tables using the following syntax:

INSERT INTO table_name (column_1, column_2, ..., column_n)
VALUES (value_1, value_2, ..., value_n);

There is need to check the column names of the table to know where you are inserting to, and 
data type of each column to know what data you are inserting into them. THere is no need to 
list all columns in the table, only specify the designated columns that data is needed to be
inserted into.
*/

-- Using the query below to see what we have inserted on top with our INSERT statement.
SELECT *
FROM employees
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES
(
	999901,
    '1986-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);

/* It doesn't matter how the columns are listed, what matters is that the values are listed in the order the
columns have been listed.
*/

INSERT INTO employees
(
	first_name,
    last_name,
    gender,
    birth_date,
    emp_no,
    hire_date
) VALUES
(
	'Patricia',
    'Lawrence',
    'F',
    '1973-3-26',
    999902,
    '2005-01-01'
);

/*
The parentheses section of the INSERT INTO part can be omitted, leaving only:

INSERT INTO table_name
VALUES (value_1, value_2, ..., value_n);

When this happens, all columns of the table must have data inserted into them, and in the same order the columns
are in the table.
*/

INSERT INTO employees
VALUES
(
	999903,
    '1977-09-17',
    'Jonathan',
    'Creek',
    'M',
    '1999-01-01'
);
    
 SELECT * 
 FROM titles
 LIMIT 10;
 
 INSERT INTO titles
 (
	emp_no,
    title,
    from_date
) VALUES
(
	999903,
    'Senior Engineer',
    '1997-10-01'
);

SELECT *
FROM titles
ORDER BY emp_no DESC
LIMIT 10;

SELECT *
FROM dept_emp
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO dept_emp
VALUES
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);