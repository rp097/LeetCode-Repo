# Write your MySQL query statement below

-- SELECT author_id as id
-- FROM Views
-- WHERE author_id = viewer_id
-- GROUP BY author_id
-- HAVING COUNT(*) >= 1
-- ORDER BY author_id ASC

SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC