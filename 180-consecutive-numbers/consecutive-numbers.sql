/* Write your T-SQL query statement below */
select Distinct l1.num as ConsecutiveNums 
from Logs l1
join logs l2 on l1.id = l2.id -1
join logs l3 on l1.id = l3.id - 2

where l1.num = l2.num And l1.num = l3.num
