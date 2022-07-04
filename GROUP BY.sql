/*
GROUP BY keyword is used to group query results according to a specific or fields.

It must be placed immediately after the WHERE keyword, if any, and just before the
ORDER BY keyword.

In most cases, when you need an aggregate function, you must use the GROUP
BY keyword in your query too.

You should always include the field you have grouped your results by in the SELECT 
statement.

Syntax:

SELECT column_name(s)
FROM table_name
WHERE conditions
GROUP BY column_name(s)
ORDER BY column_name(s);

*/


SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;