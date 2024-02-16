show databases;

create database cds16;
create database sample;
drop database sample;
show tables;

use cds16;
CREATE TABLE emp(
emp_id VARCHAR(8),
emp_name VARCHAR(20),
emp_desgn VARCHAR(10),
empage int
);
show tables;
select * from emp;

CREATE TABLE std_details(
std_id VARCHAR(9),
std_name CHAR(30),
std_email VARCHAR(10),
std_age INT
);
show tables;
select * from std_details;
insert into emp values
('E1','ABC','XYZ',35),
('E2','PQR','MANGER',45),
('E3','XYZ','CEO',50),
('E4','KAV','STMANAGER',34),
('E5','BGY','SALES',35);
show tables;
select * from emp;
update emp
set empage=55
where emp_id='E1';
delete from emp where  emp_id='E1';
select * from emp;
describe emp;
alter table emp
add empcity varchar(20);
describe emp;
alter table emp
 drop column empcity;
 describe emp;
 alter table emp
 modify  emp_desgn  varchar(20);
 alter table emp
 rename column empage to age;
 alter table emp
 rename to employee;
 select * from employee;
 truncate table employee;
 describe employee;
 
 use cds16;
 select * from Advertising;
 use classicmodels;
 select * from customers;
 select contactLastName,contactFirstName,country
 from customers;
 select * from employees;
 select lastName,firstName,email
 from employees;
 select * from offices;
 select city, country,  state
 from offices;
 select * from  orders;
 select  orderNumber, customerNumber, shippedDate from orders;
 select * from payments;
 select *  from productlines;
 select * from products;
 select productName, productLine, buyPrice from products;
 select * from  customers;
 select distinct (country)
 from customers;
 
 select contactLastName,contactFirstName,country
 from customers
 where country='USA';
 select * from customers;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where  creditLimit > 100000;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where creditLimit<50000;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where creditLimit <= 80000 and country='USA';
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where country not 'USA';
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 order by creditLimit;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 order by creditLimit desc;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 order by contactFirstName;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 order by contactLastname desc;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where country='Italy'
 order by creditLimit desc;
 
 
 select * from customers 
 where state is null;
  select contactLastName,contactFirstName,country, creditLimit
 from customers
 where country='UK'
order by creditLimit 
limit 5;
use classicmodels;
 select contactLastName,contactFirstName,country, creditLimit
 from customers
where country in ('USA','UK','France')
order by creditLimit;
select contactLastName,contactFirstName,country, creditLimit
 from customers
where creditLimit between 75000 and 100000;
select contactLastName,contactFirstName,country, creditLimit
 from customers
 where contactFirstName like 'a%';
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where contactLastName like '%z';
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where contactFirstName like 'a%d';
  select contactLastName,contactFirstName,country, creditLimit
 from customers
 where contactFirstName like '%an';
 select contactLastName,contactFirstName,country, creditLimit
 from customers
 where contactFirstName like '%an%';

 select count(country)as Num_of_country
 from customers;
 
 select avg(creditLimit) as AvgLimit 
 from customers;
 
 
 select avg (creditLimit) as TotalLimit
 from customers
 where country ='USA';
 select  sum(creditLimit) 
 from customers
 where country ='France';
 select min(creditLimit)
 from customers
 where country='UK';
 select max(creditLimit)
 from customers
 where country='USA';
select country, count(contactFirstName) as custCount
from customers
group by country
order by custCount desc
limit 10;
use classicmodels;
select country, count(contactFirstName) as custCount,sum(creditLimit) as totalCredit,
avg(creditLimit) as avgCredit, min(creditlimit) as minCredit, max(creditlimit) as maxCredit
from customers
group by country;
select country,max(creditlimit),min(creditLimit)as min_credit
from customers
where creditlimit>100000
group by country
order by min_credit desc;
select country,min(creditlimit)
from customers
where creditlimit<100000
group by country;
select country,count(creditlimit),max(creditlimit)
from customers
where creditlimit>100000
group by country;
select country,count(creditlimit),max(creditlimit)
from customers
where creditlimit>100000
group by country;
select country,count(creditlimit),max(creditlimit) as cnt
from customers
group by country
having cnt>1;
select country,count(creditlimit),max(creditlimit),min(creditlimit),avg(creditlimit)
from customers
group by country
having avg(creditlimit)>75000
order by avg(creditlimit) desc;




 

  



 
 


 
 


 
 
 
 
 
 
 
 
 






