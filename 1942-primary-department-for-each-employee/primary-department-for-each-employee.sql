SELECT employee_id, department_id
FROM (SELECT *,
Rank() OVER(PARTITION BY employee_id ORDER BY primary_flag DESC) AS rk 
FROM Employee)AS cte 
WHERE rk = 1