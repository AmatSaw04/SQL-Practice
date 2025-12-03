/* Write your T-SQL query statement below */
select x, y, z, 
(case when x + y > z and y+z > x and z + x > y Then 'Yes' else 'No' END )triangle
from Triangle
