/*
AND can only be used to return results based on conditions with several columns,
as the result has to meet all the specified conditions.

AND Keyword Syntax

SELECT *
FROM table_name
WHERE condition_1 AND condition_2;
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis'
AND
	gender = 'M';