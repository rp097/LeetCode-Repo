SELECT
    person_name
FROM Queue q1
WHERE 1000 >= (
    SELECT SUM(weight)
    FROM Queue q2
    WHERE q1.turn >= q2.turn
)
ORDER BY turn DESC
LIMIT 1
