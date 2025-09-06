

drop table university

select * from university

select * from students

select * from emp

create table university (ID int primary key identity(1,1), names varchar(100), dept varchar(100), fees float )

insert into university values ('dev', 'chem', 25000.10, 'dev23@gmail.com')

alter table university add email varchar(100) unique

update university set email = 'manoj@gmail.com' where ID = 1 

select * from university where id = 5



create table students (
					   s_id int,
					   s_name varchar(50),
					   class varchar(10),
					   foreign key  (s_id) references university (id))

insert into students values (3,'neel', '11th')

create table emp (emp_id varchar(100), emp_name varchar(100), salary float)

alter table emp add department varchar(100)

insert into emp values (6, 'namitha', 100000, 'sde')

alter table emp add phone_num bigint

update emp set phone_num = 9479957578 where emp_id = 6

delete from university where id= 1

alter table  emp drop column salary 

