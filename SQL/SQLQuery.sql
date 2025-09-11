use master

use SmartMeter

select * from SmartMeterReadings

select * from employee

select count (*), dept_id from employee group by dept_id having count(*)>2

having count (*) > 2

select top 5 * from employee order by salary desc

select * from employee order by salalry desc offset 1 rows fetch next 5 rows only

/* we cannot apply "offset" and "fetch" with top */

use SmartMeter

/* Find all the books all the users and all the order */
select *
from orders
inner join books on orders.product_id = books.product_id
inner join users on orders.users_id = users.users_id;

/*find all oreders count */
select count(*)
from orders

/* find particular user who has order these books */
select *
from books
where title = 'how to laugh'

/* find books users has order */
select * from 

