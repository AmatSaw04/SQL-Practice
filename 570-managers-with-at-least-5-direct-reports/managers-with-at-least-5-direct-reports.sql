WITH manager AS (
    SELECT 
        id, 
        name 
    FROM Employee
    UNION ALL
    SELECT 
        e.id, 
        e.name
    FROM Employee e
    INNER JOIN manager mh 
        ON e.managerId = mh.id
)
SELECT 
    m.name
FROM Employee m
JOIN Employee e ON m.id = e.managerId
GROUP BY m.id, m.name
HAVING COUNT(e.id) >= 5;