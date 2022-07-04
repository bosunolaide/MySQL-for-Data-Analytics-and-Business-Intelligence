/*
When the WHERE condition is not used in the UPDATE statement, all rows of the column(s) specified would be '
affected. This can be reversed by first saving the state of the table using the COMMIT statement before using 
UPDATE statement, then use ROLLBACK statement to reverse to the previous state of the table if the UPDATE 
statement generates an unwanted result. 
*/

-- Always set autocommit to 0 before using COMMIT and ROLLBACK statements.
SET autocommit = 0;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

COMMIT;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
    
ROLLBACK;

-- Use COMMIT statement again after rolling back to the previous state of the table.
COMMIT;

UPDATE departments_dup
SET dept_name = 'Data Analysis'
WHERE dept_no = 'd010';