WITH Bus AS 
(
    SELECT 
        turn,
        person_name,
        weight,
        SUM(weight) OVER 
        (
            ORDER BY turn
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ) AS cumulative_wt
    FROM Queue
    ORDER BY turn
)
SELECT person_name
FROM Bus
WHERE cumulative_wt <= 1000
ORDER BY turn DESC
LIMIT 1


