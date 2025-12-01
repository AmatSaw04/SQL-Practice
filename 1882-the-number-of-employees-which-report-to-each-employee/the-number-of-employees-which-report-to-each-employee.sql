WITH man_count AS(
    SELECT
        reports_to,
        COUNT(*) AS reports_count,
        ROUND((SUM(age) * 1.0) / COUNT(*), 0) AS average_age
    FROM Employees
    GROUP BY reports_to
)
SELECT
    employee_id,
    name, 
    reports_count,
    average_age
FROM Employees e
JOIN man_count mc ON e.employee_id = mc.reports_to