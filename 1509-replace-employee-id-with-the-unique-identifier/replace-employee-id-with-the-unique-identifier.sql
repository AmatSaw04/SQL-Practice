/* Write your T-SQL query statement below */
SELECT unique_id, name 
From  Employees
Left Join EmployeeUNI
ON Employees.id =  EmployeeUNI.id