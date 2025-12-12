/* Write your T-SQL query statement below */
with aa as(
    select top 1 u.name n, count(*) rcnt
    from Movierating mr
    inner join Users u
    on u.user_id = mr.user_id
    group by u.name
    order by rcnt desc, n asc
)
, mr as ( select top 1 m.title, avg(mr.rating * 1.0) avg_rat
    from MovieRating mr
    inner join Movies m
    on mr.movie_id = m.movie_id
    where mr.created_at >= '2020-02-01' AND mr.created_at <= '2020-02-29'
    group by m.title
    order by avg_rat desc, m.title asc
)
select n as results
from aa
union all
select title as result
from mr


