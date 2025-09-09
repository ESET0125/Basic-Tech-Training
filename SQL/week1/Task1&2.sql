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

insert into customers values(5,'manan', 'Jaiput', 'West');

insert into SmartMeterReadings values(105, 5, 'basement', '2025-03-22', '2025-04-07 14:30:00', 100);

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
