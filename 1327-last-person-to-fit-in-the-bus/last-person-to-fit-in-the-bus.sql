SELECT TOP 1 person_name FROM
(SELECT person_name,turn, SUM(weight) OVER(ORDER BY turn ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)  AS Total_weight FROM Queue) AS T
WHERE Total_weight <=1000
ORDER BY Total_weight DESC