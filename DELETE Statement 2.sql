/*
Using a DELETE statement without a WHERE clause will remove all records of the table.
Although, a ROLLBACK statement may restore the database's initial state before the error if 
a COMMIT statement was used before executing DELETE, it is important to always use
a WHERE clause to prevent accidental loss of data.
*/

SET autocommit = 0; 

SELECT *
FROM departments_dup
ORDER BY dept_no;

DELETE FROM departments_dup;

ROLLBACK;

SELECT *
FROM departments
ORDER BY dept_no;

DELETE FROM departments
WHERE dept_no = 'd010';

