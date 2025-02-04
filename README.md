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
