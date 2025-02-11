create database shiyas;
use shiyas;
create table students (
name char(),
age int,
course char (20));
select * from students;
select name,course from students;
insert into students values('shiyas',21,'data science'),('akshay',21,'data analyst'),('basil',20,'data analyst');
select * from students;
truncate students;
create database details;
use details;
create table data(
join_date date,
name char(20),
age int,
job char(25),
salary int);
select * from data;
insert into data values('akshay',21,'data analyst',20000);
create database akshay;
use akshay;
create table hello(
join_date date,
name char(20),
age int,
job char(25),
salary int);
select * from hello;
insert into hello values ("2025-6-6",'akshay',22,'data analyst',20000);
use shiyas;
select * from students; 
truncate hello;
create database beat;
use beat;
create table beat_students(
join_date date,
name char(25),
course char(25),
fee int);
select * from beat_students;
insert into beat_students values('2025-10-10','akshay','data analyst',28000);
select * from salaries;
select max(basepay),EmployeeName from salaries group by employeeName order by max(basepay) desc limit 1;
select EmployeeName,TotalPay from salaries;
select EmployeeName,JobTitle,TotalPay from salaries;
select min(TotalPay) as tp,EmployeeName from salaries group by employeeName order by tp limit 1;
select avg(totalpay) from salaries;
select sum(totalpay) from salaries;
select count(totalpay) from salaries;
select count(employeename) from salaries;
select count(id) from salaries;
select count(employeename) from salaries where employeename like 'd%';
select count(employeename) from salaries where JOBTITLE like 'DEPUTY%';
select count(employeename) from salaries where OvertimePay=0;
select count(employeename) from salaries where jobtitle like '%chief%';
select count(employeename) from salaries where BasePay>200000;
select * from railway_data_dictionary;
select * from railway;
select * from example1;
select sum(c) from example1;
select avg(a) from example1;
select max(d) from example1;
select count(a) from example1;
select * from example2;
select sum(MyUnknownColumn) from example2;
select count(d) from example2 where d>8;
select count(b) from example2;
select * from salaries;
select count(employeename) from salaries;
select count(jobtitle) from salaries where jobtitle like 'captain%'; 
select count(jobtitle) from salaries where jobtitle like '%chief%';
select min(basepay),employeename from salaries group by employeename order by min(basepay) limit 1;
select max(basepay) as bp,employeename from salaries group by employeename order by bp desc limit 5;
select count(basepay) from salaries where basepay<50000;
select distinct jobtitle from salaries; 
select count(distinct jobtitle) from salaries;  
select  distinct jobtitle, count(employeename) as employees from salaries group by jobtitle order by employees desc;
select count(employeename) from salaries where basepay>15000 and overtimepay<5000;
select count(employeename) from salaries where TotalPay>200000 and totalpay<300000;
select count(employeename) from salaries where TotalPay>100000 and totalpay<200000;
