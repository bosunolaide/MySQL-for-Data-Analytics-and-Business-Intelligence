/*
Aggregate functions can be used with Joins, but care must be taken to only include fields of interest
in the SELECT statement, as other fields may return unrealistic results. Also the results can be grouped 
by a non-numerical field of interest. 
*/

# Example: Whatb is the average salary of all men and women in the company?

SELECT 
    e.gender, AVG(s.salary) AS avg_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;