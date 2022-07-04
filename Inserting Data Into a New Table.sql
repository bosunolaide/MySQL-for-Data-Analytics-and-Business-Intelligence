/*
INSERT statements can also be used to copy data from one table into another using the following syntax:

INSERT INTO table_2 (column_1, column_2, ..., column_n)
SELECT column_1, column_2, ..., column_n
FROM table_1
WHERE condition;

It doesn't have to be all the columns of the source table that would be copied. The WHERE keyword
can be used to specify what information needs to be copied.
*/

SELECT *
FROM departments
LIMIT 10;

CREATE TABLE IF NOT EXISTS departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
    
);

INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT *
FROM departments;

SELECT *
FROM departments;

INSERT INTO departments
VALUES
(
	'd010',
    'Business Analysis'
    
);
