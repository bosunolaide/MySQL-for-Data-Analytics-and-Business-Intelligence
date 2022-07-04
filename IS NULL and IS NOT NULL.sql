/*
Null represents a missing value. IS NULL and IS NOT NULL keywords are
 used to check for missing values in a table, in the database.
*/

SELECT dept_name
FROM departments
WHERE dept_no IS NOT NULL;