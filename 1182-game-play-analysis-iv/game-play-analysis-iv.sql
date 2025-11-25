WITH Fl AS (
    SELECT player_id, MIN(event_date) as f1
    FROM Activity
    GROUP BY player_id
)
SELECT ROUND(COUNT(a.player_id) * 1.0 / (SELECT COUNT(*) FROM Fl),2) AS fraction
FROM Fl f
JOIN Activity a ON f.player_id = a.player_id AND a.event_date = DATEADD(day, 1, f.f1)