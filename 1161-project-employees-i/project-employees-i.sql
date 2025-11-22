/* Write your T-SQL query statement below */
select p.project_id, round(avg(e.experience_years * 1.00), 2) average_years 
from Project p
left join Employee e
on p.employee_id=e.employee_id
group by p.project_id