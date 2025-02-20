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
use shiyas;
select * from railway;
select count(`Transaction ID`) from railway;
select distinct `Payment Method` from railway;
select count(distinct `Payment Method`) from railway;
select distinct `Payment Method` from railway where payment ;

select concat('anu','rag') as name;
select upper('aNjana') as caps;
select char_length('anjana') as len;
select substr("hello bye hey",1,5) as str;
select repeat('anjana',2) as caps;
select ceiling(25.6);
select abs(-123);
select floor(29.6);
select round(25.49);
select round(25.565,2);
select pi();
select sqrt(9);
select rand();
select rand()*11;
select floor(rand()*11);
select floor(rand()*60+20);
select floor(rand()*60+60);
select now();select current_timestamp();
select curtime();
select curdate();
select dayname(`date of purchase`) as day_s,count(`transaction id`) as ct from railway group by day_s having ct>20 order by ct;
select dayname(`date of purchase`) as day_s,count(`transaction id`) as ct from railway group by day_s order by ct;
select monthname(`date of purchase`) as month_s,count(`transaction id`) as ct from railway group by month_s order by ct desc;
select * from  zudio_sales_data;
select count(city) from zudio_sales_data;
alter table zudio_sales_data rename column city to place;
alter table zudio_sales_data rename column store to  company;
alter table zudio_sales_data rename column company to store;
alter table zudio_sales_data rename column place to city;
create table marks(roll_no int,mark int);
insert into marks values(1,25),(2,23),(3,24),(3,35),(4,40),(5,18),(6,46);
insert into marks values(10,23),(18,28);
select * from marks;
select * from grades;
create table grades(roll_no int,grade char(3));
insert into grades values(1,'b+'),(2,'b'),(3,'b'),(4,'a'),(5,'c'),(6,'a+');
insert into grades values(9,'a'),(11,'b');
select * from marks join grades on marks.roll_no=grades.roll_no;
select * from marks left join grades on marks.roll_no=grades.roll_no;
select * from marks right join grades on marks.roll_no=grades.roll_no;
select * from marks inner join grades on marks.roll_no=grades.roll_no; 
select * from marks full join grades;

select marks.roll_no from marks left join grades on marks.roll_no=grades.roll_no
union all
select grades.roll_no from marks right join grades on marks.roll_no=grades.roll_no;

select marks.roll_no from marks left join grades on marks.roll_no=grades.roll_no
union
select grades.roll_no from marks right join grades on marks.roll_no=grades.roll_no;
use shiyas;
select * from test;
select * from train;
select * from `country-code` full join zomato;

select * from `country-code` left join zomato on `country-code`.code=zomato.code
union
select * from `country-code` right join zomato on `country-code`.code=zomato.code;

select * from `country-code` left join zomato on `country-code`.code=zomato.code
union all
select * from `country-code` right join zomato on `country-code`.code=zomato.code;

select * from `country-code` right join zomato on `country-code`.code=zomato.code;

select * from `country-code` left join zomato on `country-code`.code=zomato.code;

select * from test left join train on test.PassengerId=train.PassengerId;
select * from test right join train on test.PassengerId=train.PassengerId;

select * from test left join train on test.PassengerId=train.PassengerId
union
select * from test right join train on test.PassengerId=train.PassengerId;

select * from test left join train on test.PassengerId=train.PassengerId
union all
select * from test right join train on test.PassengerId=train.PassengerId;

alter table `country-code`  rename column `Country Code` to code;
alter table zomato  rename column `Country Code` to code;

