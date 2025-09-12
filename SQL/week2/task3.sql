Use sql6;

-- take3

-- 1) show a list of all student names (unique only)
select ID, name
from Students2024
union 
select ID, name
from Students2025

-- 2) show a list of all student names(including duplicates)
select ID, name
from Students2024
union all
select ID, name
from Students2025

--3) Display students name in UPPER CASE and LOWER CASE 
select upper (name) as names from Students2024
select lower (name) as names from Students2024

-- 4) Find length of each student's name
select name ,len(name) as name_length from Students2024

--5) Replace ID with StudentsID
select id AS StudentsID from Students2024;

-- 6) create a new column showing "Name - ID" using CONCAT
SELECT Name, ID, CONCAT(Name, ' - ', ID) AS Name_ID FROM Students2024;

-- 7) show today's date using GATEDATE()
select getdate() as today_date;

-- 8) Find the duration (in days) of each project using DATEDIFF
select ProjectID, StartDate, EndDate,
    datediff(day, StartDate, EndDate) as ProjectDurationDays from Projects;
 
 -- 9) Add 10 days to each project's  EndDate using DateAdd
 select ProjectID, StartDate,EndDate,dateadd(day, 10, EndDate) as NewEndDate from Projects;

 -- 10) Find how many days are left until each project ends 
 select ProjectID, StartDate, EndDate, datediff(day,getdate(),EndDate) as days_left from Projects;

 -- 11) covert today's into DD/MM/YYYY format using CONVERT
 select convert (varchar(10), getdate() , (103)) as date_DDMMYYYY

 --12) convert a float 123.456 into an integer using CAST
 select cast (123.456 as int) as integers