/* Write your T-SQL query statement below */
SELECT em.name, b.bonus
From Employee em
Left Join bonus  b
ON em.empId = b.empId
Where b.bonus < 1000 or b.bonus is null


