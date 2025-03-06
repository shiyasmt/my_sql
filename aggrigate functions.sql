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