/* Write your T-SQL query statement below */
with res as (
    select s.product_id, year, quantity, price,
    Rank() over(partition by s.product_id order by s.product_id, year) rank
    from Sales s
)
select product_id, year first_year, quantity, price
from res
where rank = 1