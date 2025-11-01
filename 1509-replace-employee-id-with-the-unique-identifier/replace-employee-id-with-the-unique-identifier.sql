/* Write your T-SQL query statement below */
select unique_id, name
from employees as e
left outer join employeeuni as eu
    on e.id = eu.id;