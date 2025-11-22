/* Write your T-SQL query statement below */
with A as 
(
select project_id, e.employee_id, experience_years 
from Project p
left join Employee e
on p.employee_id=e.employee_id
)

select A.project_id, round(avg(experience_years * 1.00), 2) average_years
from A
group by A.project_id