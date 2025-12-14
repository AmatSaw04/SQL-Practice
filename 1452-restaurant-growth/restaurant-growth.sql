SELECT visited_on, sum(sum(amount)) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) amount, ROUND(CAST(SUM(SUM(amount)) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS FLOAT)/7.0 ,2) average_amount
FROM Customer 
GROUP BY visited_on
ORDER BY visited_on
OFFSET 6 ROWS