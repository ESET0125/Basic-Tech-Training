create database esyasoft;

use esyasoft;

create table employees (id int, name varchar, salary float, phone_no int, DOB date);

select * from employees

insert into employees(id, name, salary, phone_no,
DOB) valueds
drop table employees;

create table employees (id int, emp_name varchar(100), salary float, phone_no int, DOB date);

select * from employees

insert into employees(id, emp_name, salary, phone_no,
DOB) values (1, 'suresh', 1150000.0, 898171970, '1999-02-21')


drop table employees

select * from employees where emp_name = 'suresh';

delete from employees where id = 4

