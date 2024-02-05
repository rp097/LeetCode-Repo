# Write your MySQL query statement below

SELECT id,
    (
        CASE
        WHEN id = (SELECT COUNT(*) FROM Seat) AND MOD(id,2) = 1  THEN student
        WHEN MOD(id,2) = 1 THEN LEAD(student,1) OVER (ORDER BY id)
        WHEN MOD(id,2) = 0 THEN LAG(student,1) OVER (ORDER BY id)
        END
    ) AS student
FROM Seat
ORDER BY id