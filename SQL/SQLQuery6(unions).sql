Use sql6;

select ID, name
from Students2024
union 
select ID, name
from Students2025


-- print duplicates also
select ID, name
from Students2024
union all
select ID, name
from Students2025

--upper and lower 

select getdate() as today_date

select upper ('heelo world') as UpperText

select upper (name) as names from Students2024
select lower (name) as names from Students2024


-- LEN num of characters in string
select len(1654654) as hello
select name ,len(name) as name_length from Students2024

--substring -- 3- string position -- 4= no of characters to return (star

select substring ('shivam', 3, 4) as shivam
select substring (name, 2, 5) from Students2024
--************************************************************
select reverse (substring (name,2,len(name))) from Students2024

-- replace
select replace ('anita likes tea ', 'tea', 'coffee') as coffee 
select replace (name, 'anita', 'Riya') as names from Students2024

-- concat
select concat('manan dont' , '_' , 'like tina') as hell
select concat(name, 

-- cast 
select cast ('5000' as int) as SalaryInt
select cast(id as float) from Students2024

-- convert 
select getdate() as todaysdate
select convert (varchar(10), getdate() , (103)) as date_DDMMYYYY