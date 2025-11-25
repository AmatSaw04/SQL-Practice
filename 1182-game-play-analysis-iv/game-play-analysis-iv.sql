/* Write your T-SQL query statement below */
with aa as (
    select player_id, event_date, dateadd(day,1,min(event_date)over(partition by player_id)) d2
    from activity
)
select round(sum(case when event_date = d2 then 1 else 0 end) *1.0/(select count(distinct player_id) from activity), 2) fraction
from aa