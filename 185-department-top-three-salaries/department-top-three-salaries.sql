# Write your MySQL query statement below

WITH info AS (
    SELECT
        e.departmentId as id,
        d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        (DENSE_RANK() OVER (PARTITION BY e.departmentId
                    ORDER BY e.salary DESC)) AS Top_salaries 
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
)
SELECT
    i.Department,
    i.Employee,
    i.Salary
FROM info i
WHERE i.Top_salaries <= 3



