with aa as (
    select *, count(*) over (partition by employee_id) cnt
    from Employee   
)
select employee_id, department_id
from aa
where cnt = 1 or (cnt<>1 and primary_flag = 'Y' )