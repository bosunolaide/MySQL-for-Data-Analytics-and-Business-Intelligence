/*
The COUNT() function is used to count the number of occurence of non_null
records in a column of a given table.

It can be used for both numeric and non-numeric data.

COUNT(DISTINCT column_name) is used to count the number of times unique values 
are encountered in a column.

COUNT(*) is used to count the number of all rows of a table, NULL values inclusive.

Using parentheses with aggregate functions like COUNT(), the function name has to begin
attached to the parentheses without leaving white spaces. Else the query will not work.
*/

SELECT COUNT(salary)
FROM salaries;

SELECT COUNT(DISTINCT from_date)
FROM salaries;

SELECT COUNT(*)
FROM salaries;

SELECT COUNT(DISTINCT dept_no)
FROM dept_emp;