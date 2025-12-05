with aa as (
    select *, sum(weight) over (order by turn) c_sum
    from Queue
)

select person_name from aa
where c_sum = (select max(c_sum) from aa where c_sum <= 1000)