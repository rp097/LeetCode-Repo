# Write your MySQL query statement below

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance i
WHERE i.tiv_2015 IN (SELECT tiv_2015 FROM Insurance i1 WHERE i1.pid != i.pid)
AND NOT EXISTS (
    SELECT 1 FROM Insurance i2 WHERE i2.pid != i.pid AND i.lat = i2.lat AND i.lon = i2.lon
    )