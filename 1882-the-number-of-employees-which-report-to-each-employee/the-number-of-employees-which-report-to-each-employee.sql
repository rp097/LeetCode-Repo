# Write your MySQL query statement below

SELECT 
    e.employee_id,
    e.name,
    e1.reports_count,
    e1.average_age
FROM Employees e
JOIN (
    SELECT 
    reports_to as employee_id, 
    COUNT(*) as reports_count,
    ROUND(AVG(age)) as average_age 
    FROM Employees e
    GROUP BY e.reports_to HAVING e.reports_to IS NOT NULL
) e1 ON e.employee_id = e1.employee_id
ORDER BY e.employee_id

