/* Write your T-SQL query statement below */
select p.product_id , ISNULL(round(SUM(p.price*u.units) * 1.0/SUM(u.units),2),0) average_price
from prices p
left join UnitsSold u
on p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id