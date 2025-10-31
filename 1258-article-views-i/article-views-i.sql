/* Write your T-SQL query statement below */
SELECT Distinct author_id as id
FROM Views
Where author_id = viewer_id
Order By author_id ASC;