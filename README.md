# SQL-Practice
show databases;
create database VIT;
USE ViT;
create table BOE(
student_id int, 
s_name varchar(100), 
s_mark int
);
show tables from ViT;
select * from BOE;
insert into BOE values (101, 'Amatya', 99),
(102, 'Rohan', 95),
(103, 'Sneha', 92),
(104, 'Kiran', 98),
(105, 'Priya', 97);
desc BOE;
alter table BOE drop column s_contact;
insert into BOE values (106, 'Shambhu', 97);
alter table BOE add(
	s_country varchar(25) DEFAULT 'INDIA'
);
use vit;
alter table boe rename column
	s_country TO s_state;
desc boe;
select * from boe;
delete from boe where s_id = 102;
update boe SET  s_name ='Shiv' WHERE student_id=103;
update BOE SET s_mark = s_mark+1;
use vit;
select student_id, s_name from BOE where student_id=102


CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

Select * from Worker where SALARY not between 100000 and 200000;
SELECT first_Name FROM Worker WHERE worker_id IN (2,4,6);
select * from worker where salary between 200000 and 400000
And worker_id in(1,2,3,4,5);
desc worker;
select min(salary) from worker where department='HR';
select distinct (department) from worker;
#alias-help u to give some temp name for a column
select worker_id as emp_id from worker;
select worker_id from worker
Union all
select first_name from worker;
select department,worker_id from worker where salary=100000
Union 
select department,worker_id from worker where salary=200000
Order by worker_id;
select worker_id,first_name,department,
Case
when salary>100000 then 'Rich People'
when salary<100000 && salary>=100000 then 'Middle class People'
else 'POOR'
end
as People_stage_wise from worker;
