/*
AND is always considered before OR whenever a query is being executed by SQL. 
IT is good to take note of this while writing queries, so intended results can be returned. 
Brackets/Parenthesis can be used to encapsulate OR statements, so they can run concurrently 
while also being protected from the influence AND keyword.
*/

USE employees

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
        

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');