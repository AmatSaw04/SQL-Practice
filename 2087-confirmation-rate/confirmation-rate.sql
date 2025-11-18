/* Write your T-SQL query statement below */
select 
    s.user_id, ROUND(AVG(CASE when c.action = 'confirmed' Then 1.0 else 0.0 end), 2) confirmation_rate
from signups s
left join confirmations c
on s.user_id = c.user_id
group by s.user_id