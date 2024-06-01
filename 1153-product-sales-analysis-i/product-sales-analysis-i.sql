# Write your MySQL query statement below
-- SELECT Product.product_name, Sales.year, Sales.price
-- FROM Sales
-- LEFT JOIN Product ON Sales.product_id = Product.product_id

SELECT 
    p.product_name,
    s.year,
    s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id 
