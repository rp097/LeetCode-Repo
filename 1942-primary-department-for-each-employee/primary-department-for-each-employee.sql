# Write your MySQL query statement below

SELECT 
    e.employee_id,
    (CASE WHEN COUNT(e.department_id) = 1 THEN e.department_id ELSE MAX((CASE WHEN e.primary_flag = 'Y' 
        THEN e.department_id ELSE NULL END))END) as department_id
FROM Employee e
GROUP BY e.employee_id HAVING 'Y' IN (MAX(e.primary_flag)) OR COUNT(e.department_id) = 1
