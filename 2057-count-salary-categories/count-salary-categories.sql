# Write your MySQL query statement below

WITH AllCategories AS (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary' AS category
    UNION
    SELECT 'High Salary' AS category
),
Cat AS (
    SELECT
        account_id,
        income,
        (
            CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income >=20000 AND income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
            END
        ) as category
    FROM Accounts
)
SELECT
    a.category,
    COALESCE(COUNT(account_id),0) AS accounts_count
FROM AllCategories a
LEFT JOIN Cat c
ON a.category = c.category
GROUP BY a.category

