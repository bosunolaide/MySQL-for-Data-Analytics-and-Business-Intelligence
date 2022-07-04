SELECT *
/*
Other Comparison Operators are mathematically derived operators like:
= equal to
!= or <> not equal to
< less than
> greater than
<= less than or equal to
>= greater than or equal to
*/

# Note that >= or <= are inclusive of the specified condition

FROM employees
WHERE gender = 'F'
AND hire_date >= '2000-01-01';

# Note that > or < are not inclusive of the specified condition
SELECT *
FROM salaries
WHERE salary > '150000';