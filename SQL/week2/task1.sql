/* Create DB */
create database task08;

/* Use DB */
use task08;

/* Create tables */
create table users(
user_id int Primary Key,
email varchar(50),
name varchar(50)
);

create table books(
product_id int primary key,
title varchar(50),
price float
);

create table orders(
order_no int primary key,
user_id int,
product_id int,
foreign key(user_id) references users(user_id),
foreign key(product_id) references books(product_id),
);

/* Insert records into tables */
insert into users values(1,'callmebhai@gmail.com','GopalBhai'),
(2,'toxicmajhi@gmail.com','Manjit'),
(3,'kalajadu@gmail.com','SoumyaDeep'),
(4,'vimalpan@gmail.com','JayaSai'),
(5,'ghostlaugh@gmail.com','Namitha');

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

/* Display list of all orders users and books */
SELECT * FROM ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id;

/* Display record for buyers buying book with highest price */
SELECT * FROM ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id
WHERE b.price = (SELECT MAX(price) FROM books) ;

/* Count of all orders */
select count(*) as count from orders 

/* Find particular user who has order these books */
SELECT b.title as book_name, u.name as users FROM ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id
where b.title in ('mssql','Marfa');

/* Find book users has order */
SELECT b.title as book_name, u.name as users FROM ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id;

/* Total price of books user has order */
SELECT u.name as users, sum(b.price) FROM ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id
group by u.name;

/* Find the most valuable user */
SELECT top 1 u.name as users, sum(b.price) from ORDERS o
INNER JOIN users u ON o.user_id=u.user_id
INNER JOIN books b ON o.product_id=b.product_id
group by u.name
order by sum(b.price) desc

/* Find range of books from high to low */
select title, price from books 
order by price desc

/*select highest price book*/
select top 1 title, price from books 
order by price desc

/* Find cheapest book */
select top 1 title, price from books 
order by price

/*Find newly added book*/
SELECT top 1 title from books 
order by product_id desc