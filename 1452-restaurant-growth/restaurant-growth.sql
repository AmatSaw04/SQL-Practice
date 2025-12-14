with aa as
(select visited_on, sum(amount) as amount
from customer group by visited_on
)
select visited_on, total_amount amount, round(average_amount,2) average_amount from (
select *, 
sum(amount) over(order by visited_on rows between 6 preceding and current row)
 as total_amount,
avg(amount*1.0) over(order by visited_on rows between 6 preceding and current row)
 as average_amount,
row_number() over(order by visited_on) as rn
from aa ) a
where a.rn>6