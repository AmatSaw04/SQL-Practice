/* Write your T-SQL query statement below */
SELECT product_name, year, price 
From Product as p
Join Sales as s
ON p.product_id = s.product_id  