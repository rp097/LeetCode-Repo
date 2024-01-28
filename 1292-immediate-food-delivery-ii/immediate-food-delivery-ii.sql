# Write your MySQL query statement below

SELECT 
    ROUND((SUM(CASE WHEN d.first_order = d1.customer_pref_delivery_date THEN 1 ELSE 0 END)*100)/(COUNT(d1.customer_id)),2) AS immediate_percentage
FROM Delivery d1
JOIN (
    SELECT 
    customer_id, 
    MIN(order_date) AS first_order,
    COUNT(customer_id) AS number_of_orders
    FROM Delivery 
    GROUP BY customer_id
) d ON d1.customer_id = d.customer_id
AND d1.order_date = d.first_order

