/*
DELETE keyword is used to remove specific record(s) from a database table.

The WHERE clause must be used along to specify the conditions to be met by the record(s) 
to be deleted, else all records in the table will be deleted and lost.

It is also important to always use a COMMIT statement before deleting records, so that
a ROLLBACK statement can restore the database to its initial state, incase of an 
unprecedented error.
 
The syntax for using DELETE keyword is:

DELETE FROM table_name
WHERE condition;  
*/
SET autocommit = 0;
COMMIT;

SELECT * 
FROM employees
WHERE emp_no = 999903;

SELECT *
FROM titles
WHERE emp_no = 999903;

DELETE FROM employees
WHERE emp_no = 999903;

ROLLBACK;


