/* Write your T-SQL query statement below */
Select FORMAT(trans_date, 'yyyy-MM') month, country, count(id) trans_count,SUM(case when state = 'approved' then 1 else 0 end) approved_count, sum(amount) trans_total_amount ,sum(CASE WHEN state = 'approved' then amount else 0 end) approved_total_amount
from transactions
group by FORMAT(trans_date, 'yyyy-MM'), country
order by FORMAT(trans_date, 'yyyy-MM')