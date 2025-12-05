/* Write your T-SQL query statement below */
select 'High Salary' category, (select count(*) from accounts where income > 50000) accounts_count
union all
select 'Average Salary' category, (select count(*) from accounts where income between 20000 and 50000)
union all
select 'Low Salary' category, (select count(*) from accounts where income < 20000)