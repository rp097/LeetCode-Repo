# Write your MySQL query statement below

SELECT e2.name
FROM Employee e1, Employee e2
WHERE e1.managerId = e2.id
GROUP BY e2.id HAVING COUNT(*)>=5