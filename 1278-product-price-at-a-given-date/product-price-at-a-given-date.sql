WITH aa AS (
    SELECT 
        product_id, 
        new_price, 
        ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) as rn
    FROM Products
    WHERE change_date <= '2019-08-16' 
)
SELECT 
    DISTINCT p.product_id, 
    CASE WHEN aa.new_price IS NULL THEN 10 ELSE aa.new_price END AS price
FROM Products p
LEFT JOIN aa 
    ON p.product_id = aa.product_id AND aa.rn = 1;