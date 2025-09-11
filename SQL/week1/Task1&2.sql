create database SmartMeter

create table customers(customerID int primary key, Names varchar(100), Customer_Address varchar(100) , Region varchar(100))
drop table customers

select * from customers
select * from SmartMeterReadings

create table SmartMeterReadings(MeterID int, 
								customerID int,
								Locations varchar(100), 
								InstalledDate date , 
								ReadingDateTime DateTime, 
								EnerygyConsumed int,
								foreign key (customerID) references customers(customerID))

INSERT into Customers values(101,'Rishav', 'Kolkata', 'North'),
(102,'Aniket', 'Siliguri', 'North'),
(103,'Sahil', 'Rajasthan', 'West'),
(104,'Manjit', 'Orissa', 'East'),
(105,'Soumyadeep', 'Kolkata', 'South');

 
INSERT into SmartMeterReadings values(1001, 105, 'rooftop','2024-07-02','2025-06-12 10:00:00',450),
(1002, 102, 'basement','2024-07-12','2024-06-12 10:00:00',300),
(1003, 103, 'rooftop','2024-09-03','2024-01-12 10:00:00',450),
(1004, 104, 'basement','2023-02-14','2024-04-12 10:00:00',312),
(1005, 105, 'basement','2024-05-02','2024-06-12 10:00:00',454),
(1006, 103, 'rooftop','2025-07-12','2024-05-21 10:00:00',215);

select * from SmartMeterReadings where EnerygyConsumed between 200 and 300

select * from SmartMeterReadings where ReadingDateTime between '2025-01-01' and '2025-03-31'

select * from SmartMeterReadings where  InstalledDate <= '2024-12-31'

select
    customerId,
    avg(EnerygyConsumed) as AvgEnergyConsumed,
    max(EnerygyConsumed) as MaxEnergyConsumed
from SmartMeterReadings
where ReadingDateTime between '2025-01-01 00:00:00' and '2025-12-31 23:59:59'
group by customerID;
