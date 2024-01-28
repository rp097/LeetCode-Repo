# Write your MySQL query statement below

SELECT 
    p.project_id,
    ROUND((SUM(e.experience_years)/COUNT(*)),2) as average_years
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id 
WHERE e.experience_years IS NOT NULL
GROUP BY p.project_id