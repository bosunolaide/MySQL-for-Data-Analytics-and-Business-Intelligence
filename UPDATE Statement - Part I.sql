/*
The UPDATE statement is used to update records in a table containing some previous records, using the 
syntax below:     

UPDATE table_name
SET column_1 = value_1, column_2 = value_2 ...
WHERE conditions;

Not all records of the table has to be updated, specific columns of need can be updated using WHERE clause to 
set required condition(s) to be met. 
If a non-existent condition is used in the UPDATE statement, the query would still run, but will not affect any
row/record in the specified table.
*/

SELECT *
FROM employees
WHERE emp_no = 999901;

UPDATE employees
SET
	first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
	emp_no = 999901;