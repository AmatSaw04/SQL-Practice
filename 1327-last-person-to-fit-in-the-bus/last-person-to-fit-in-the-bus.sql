select top 1 person_name from
(select person_name,turn, SUM(weight) over(order by turn) Total_weight from Queue) T
where Total_weight <=1000
order by Total_weight DESC