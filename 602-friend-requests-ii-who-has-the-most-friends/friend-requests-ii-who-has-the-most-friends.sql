# Write your MySQL query statement below

with base as(select requester_id id from RequestAccepted
union all
select accepter_id id from RequestAccepted)


select id, count(*) num  from base group by id order by count(*) desc limit 1