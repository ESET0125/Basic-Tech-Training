create database joins

create table users ( users_id int primary key, email varchar(50), names varchar(50))

drop table orders

create table books(product_id int primary key, title varchar(50), price float)

drop table orders 

create table orders(order_no int primary key,
					users_id int foreign key references users(users_id),
					product_id int foreign key references books(product_id))

select * from books
select * from users
select * from orders
insert into users values (1, 'callmebhai@gmail.com', 'Gopal'),
						 (2, 'toxicmanjit@gmail.com', 'Manjit'),
						 (3, 'kalajadu@gmail.com', 'Soumyadip'),
						 (4, 'vimalpaanmasala@gmail.com', 'Jai Sai'),

insert into users values  (5, 'ghostlaugh@gmail.com', 'Namitha');

insert into books values (105, 'How to laugh', 2001.99)

insert into orders values (408, 5, 102)


select *
from users u1
inner join orders o1 on u1.users_id = o1.users_id
inner join books b1 on o1.product_id = b1.product_id where price=(select max(price) from books);


drop table users 
