WITH aa AS (
    SELECT 
        customer_id,                 
        order_date,                  
        customer_pref_delivery_date, 
        RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS r
    FROM 
        delivery
)

SELECT ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.00 / COUNT(*),2) immediate_percentage
FROM aa
WHERE r = 1