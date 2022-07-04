/*
WHERE Keyword Syntax
Use WHERE keyword to filter results from SELECT statements with given conditions:

SELECT column_1, column_2,... column_n
FROM table_name
WHERE condition;
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';