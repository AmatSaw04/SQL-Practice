select s.product_id, s.year first_year , s.quantity, s.price
FROM Sales s
WHERE year = (SELECT MIN(year) FROM Sales WHERE product_id = s.product_id);