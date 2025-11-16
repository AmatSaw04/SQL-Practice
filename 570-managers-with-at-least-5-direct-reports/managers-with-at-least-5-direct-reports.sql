/* Write your T-SQL query statement below 
SELECT name
    case 
        When id = managerId and count(managerId) < 5 then name
        else null
    end
From Employee */
Select e.name
from Employee e
left join Employee em
on e.id = em.managerId
Group by e.id, e.name  
Having Count(em.id) >= 5