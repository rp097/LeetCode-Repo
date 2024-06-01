# Write your MySQL query statement below
-- SELECT EmployeeUNI.unique_id, Employees.name
-- FROM Employees
-- LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;

SELECT 
    eu.unique_id,
    e.name
FROM Employees e 
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;
