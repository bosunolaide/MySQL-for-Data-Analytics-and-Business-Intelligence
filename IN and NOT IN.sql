/*
IN and NOT IN keyword are used in SQL to return 
results from a number conditions specified in a 
parentheses. They are good substitutes for OR keyword
especially where multiple OR are required.
*/

-- To select all employees whose first names are either Cathie or Mark or Nathan.

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
    
-- To select all employees whose first names are not Cathie or Mark or Nathan.

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
    

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');