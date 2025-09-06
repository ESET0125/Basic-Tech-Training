create database employees

use employees

create table student(id int, names varchar(50), subjects varchar(100), fees float)
drop table student

insert into student(id, names, subjects, fees) values (4,'suraj','phy', 25000)


select*from student
select*from emp

select min(salary) as min_salary from emp

select sum(salary) as total_salary from emp

select avg(salary) as avg_salary from emp

select count(*) as total_row from emp where salary in (230007)

  
select * from employee_details OrDER BY emp_id OFFSET 1 ROW 

update emp set name =
'shivan' where name = 'Manjit'

delete from emp where name = 'shivan'

alter table emp  add phone_num varchar(50)

exec sp_help 'emp'
]
exec sp_rename 'emp.name' , 'emp_name' , 'column'
 
exec sp_rename 'emp' , 'employee_details'

select * from employee_details