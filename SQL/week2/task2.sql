create database joins
use joins
create table users ( users_id int primary key, email varchar(50), names varchar(50))

drop table orders

create table books(product_id int primary key, title varchar(50), price float)



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
						(5, 'ghostlaugh@gmail.com', 'Namitha');

insert into books values(101,'mssql',100),
						(102,'half girlfriend',699),
						(103,'Black Magic',700),
						(104,'Marfa',2000),
						(105,'How to laugh',2001);

INSERT INTO orders VALUES (401,1,101),
						  (402,2,102),
						  (403,2,103),
						  (404,3,104),
						  (405,3,103),
						  (406,4,102),
						  (407,5,102),
						  (408,5,105);
 

 /* Top N Books per User */
select u1.names, b1.title, b1.price,
			row_number() over (partition by u1.names order by b1.price desc) as row_num,
			rank() over (partition by u1.names order by b1.price desc) as ranks,
			dense_rank() over (partition by u1.names order by b1.price desc) as dense_rank_num
from users u1
			inner join orders o1 on u1.users_id = o1.users_id
			inner join books b1 on o1.product_id = b1.product_id;


/* Ranking users by Total Spemding */
select u1.names, b1.title, sum(b1.price) as totalSpend,
				row_number() over (partition by u1.users_id order by sum(b1.price)desc) as row_num,
				rank() over (partition by u1.users_id order by sum(b1.price)desc) as ranks,
				dense_rank() over (partition by u1.users_id order by sum(b1.price)desc) as dense_rank_num
from users u1
				inner join orders o1 on u1.users_id = o1.users_id
				inner join books b1 on o1.product_id = b1.product_id
group by u1.names , u1.users_id;


