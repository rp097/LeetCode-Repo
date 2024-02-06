# Write your MySQL query statement below

(
   SELECT u.name AS results
   FROM Users u
   JOIN MovieRating mr
   ON u.user_id = mr.user_id
   GROUP BY u.user_id
   ORDER BY COUNT(mr.rating) DESC, u.name ASC
   LIMIT 1
)
UNION ALL
(
    SELECT mo.title as results
    FROM Movies mo
    JOIN MovieRating mr
    ON mo.movie_id = mr.movie_id
    WHERE EXTRACT(YEAR_MONTH FROM mr.created_at) = 202002
    GROUP BY mo.movie_id
    ORDER BY AVG(mr.rating) DESC,mo.title ASC
    LIMIT 1
)

