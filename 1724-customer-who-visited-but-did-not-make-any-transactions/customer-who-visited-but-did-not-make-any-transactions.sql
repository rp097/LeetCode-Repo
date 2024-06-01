# Write your MySQL query statement below
-- SELECT Visits.customer_id, COUNT(*) as count_no_trans
-- FROM Visits
-- LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
-- WHERE Visits.visit_id NOT IN (Select visit_id FROM Transactions)
-- GROUP BY Visits.customer_id

SELECT
    v.customer_id AS customer_id,
    COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL 
GROUP BY v.customer_id;

