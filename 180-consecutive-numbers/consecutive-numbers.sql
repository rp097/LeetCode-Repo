# Write your MySQL query statement below


SELECT DISTINCT num as ConsecutiveNums
FROM Logs
WHERE (id+1,num) IN (SELECT * from Logs) AND (id+2,num) IN (SELECT * from Logs) 