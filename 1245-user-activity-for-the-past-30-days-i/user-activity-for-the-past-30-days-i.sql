select activity_date day, count(distinct user_id) active_users
from activity 
where datediff(day, activity_date, '2019-07-27') <=29 
and activity_date <= '2019-07-27'
group by activity_date
