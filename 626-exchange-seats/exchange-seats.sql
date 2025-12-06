/* Write your T-SQL query statement below */
select (case when id % 2 = 0 then id - 1
when id = (select max(id) from Seat) then id
else id +1 end) id, student from Seat order by id