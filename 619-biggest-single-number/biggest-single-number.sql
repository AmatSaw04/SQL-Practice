/* Write your T-SQL query statement below */
with aa as (
    select num
    from MyNumbers
    group by num
    having count(num) = 1
)
select max(num) num
from aa