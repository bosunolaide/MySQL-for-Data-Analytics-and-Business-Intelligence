/*
The LIMIT keyword is used to limit results of queries to a specified number of results.
The default limit for returned query results in Workbench is 1000. It can be lifted by
Edit -> Preferences -> SQL Editor -> SQL Execution -> SQL Query Results -> Limit Rows (Uncheck box)

You can also expand the Limit list on top of the SQL Query Editor and change the limit 
count as prefered. This option however only applies to queries that will run for the 
current Workbench session, unless a LIMIT keyword has been used in the query statement.

Another way to limit results is to include a LIMIT keyword at the end of a query with the 
number of results desired to be returned in integer.
  
Syntax:

SELECT column_name(s)
FROM table_name
WHERE conditions
GROUP BY column_name(s)
HAVING conditions
ORDER BY column_name(s)
LIMIT number; 
*/

SELECT *
FROM dept_emp
LIMIT 100;

