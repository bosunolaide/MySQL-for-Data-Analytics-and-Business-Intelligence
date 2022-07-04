/*
OR can be only used to return results based on conditions with one column, 
as the result only has to met with only one of the given conditions.

OR Keyword Syntax

SELECT *
FROM table_name
WHERE condition_1 OR condition_2;
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis'
OR
	first_name = 'Elvis';