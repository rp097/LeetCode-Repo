# Write your MySQL query statement below

SELECT s.product_id, s1.first_year,s.quantity, s.price
FROM Sales s
JOIN(
    SELECT product_id, MIN(year) as first_year
    FROM Sales
    GROUP BY product_id
) s1 ON s.product_id = s1.product_id
AND s.year = s1.first_year
