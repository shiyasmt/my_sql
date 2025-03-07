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
select * from `country-code`;
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

alter table `country-code`  rename column `Code` to `country code`;
alter table zomato  rename column `Country Code` to code;

insert into `usa_mercedes_benz_prices` values('maruthi',18,3,2000,'5000$');
select * from usa_mercedes_benz_prices;
set sql_safe_updates=0;
update usa_mercedes_benz_prices set mileage='18 km' where `name`='maruthi';
update usa_mercedes_benz_prices set Rating=1.5 where `name`='maruthi';
set sql_safe_updates=1;
select count(name) from usa_mercedes_benz_prices where `name` like '2020%' ;
insert into usa_mercedes_benz_prices values('kia',13,3.2,1839,'9000$');
delete from usa_mercedes_benz_prices where mileage='13';
use akshay;
drop table `data`;
drop table `hello`;
use shiyas;
alter table marks 
add column grade varchar(12);
select * from marks;
set sql_safe_updates=0;
update marks set grade=case
when mark=25 then 'c'
when mark=23 then 'c'
when mark=24 then 'c'
when mark=35 then 'b'
when mark=40 then 'b+'
when mark=18 then 'd'
when mark=46 then 'a'
when mark=23 then 'c'
else 'c+'
end;

alter table marks modify column `roll_no` char(25);
alter table marks modify column `roll_no` int;
alter table marks modify column mark int;
describe marks;
 
alter table marks add column nombers int;

alter table marks drop column nombers;

select roll_no,mark,
case
	when mark>25 then 'the student is passed'
    when mark=25 then 'the student is just passed'
    else 'the student is failed'
end as result
from marks;

use shiyas;

create table student(
id int primary key auto_increment,
namee varchar(30) not null,
age int not null,
mark int,
check (mark<=24),
statuss char(20) default 'pass');

select * from student;

insert into student (namee,age,mark) values('farsin',20,15);
insert into student (namee,age) values('shamweel',23);
insert into student (namee,age) values('shiyas',23);
insert into student (namee,age,mark) values('ansil',23,23);
insert into student (namee,age,mark) values('shahil',24,20);

use shiyas;

select if(1250>125,"yes","no") as answer;

drop table `sample_submission_49d68cx`;

select max(region) from customer;

select region,max(sales) as max_sales from customer join market on customer.cust_id=market.cust_id group by region order by max_sales desc limit 1; 

select region,customer_name from customer where exists(select sales from market where customer.cust_id=market.cust_id and sales=(select max(sales) from market));
select roll_no,grade from grades where roll_no=all(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);
select roll_no,grade from grades where roll_no=any(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);
select grade from grades where exists(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);
alter table market rename column Order_Quantity to Quantity;

select Customer_Name from customer where exists(select sales from market where customer.cust_id=market.cust_id and quantity<5);

create table employeee(
id int auto_increment primary key,
name varchar(30) not null,
base_pay int ,
overtime int ,
total_pay int);


create trigger automation
before insert 
on employeee
for each row
set new.total_pay=new.base_pay+new.overtime*(new.base_pay/160);

insert into employeee(name,base_pay,overtime) values('ansil',45000,10);
select * from employeee;
insert into employeee(name,base_pay,overtime) values('shahil',55000,15);
insert into employeee(name,base_pay,overtime) values('farsin',38000,20),('ajsal',25000,23);

drop table class_test;

create table class_test(
id int auto_increment primary key,
name char(25),
physics int,
chemistry int,
mathematics int,
malayalam int ,
total_mark int ,
percentage int) ;

create trigger test
before insert
on class_test
for each row 
set new.total_mark=new.physics+new.chemistry+new.mathematics+new.malayalam,new.percentage=(new.total_mark/200)*100;

insert into class_test(name,physics,chemistry,mathematics,malayalam) values('ansil',40,25,35,42),('shahil',20,10,15,35),('farsin',25,15,12,42);
select * from class_test;
insert into class_test(name,physics,chemistry,mathematics,malayalam) values('midlaj',40,25,35,28),('afsal',39,null,45,65);
insert into class_test(name,physics,chemistry,mathematics,malayalam) values('anshif',45,25,19,36),('swalih',15,39,28,48),('faris',47,26,12,35);

create view salary_view as select Id,EmployeeName,JobTitle,TotalPay,Year,Agency from salaries ;
select * from salary_view;
select * from salary_view where totalpay>=200000;
select count(totalpay) from salary_view where totalpay>=200000;
select count(totalpay) from salary_view where totalpay<=200000;
select max(totalpay) as max_salary,EmployeeName from salary_view group by EmployeeName limit 1;

create view zudio_view as select Country,State,city,Category,`Clothing Type`,`Staff Count`,`Sales Profit` from zudio_sales_data;
select * from zudio_view;
select * from zudio_view where `sales profit`>=9500;
select country,state,city,max(`sales profit`) as max_sales from zudio_view group by City,state,country order by max_sales desc limit 5;

create table loans(
id int ,
name char(25),
loan_amount int ,
intrest int ,
totalpay int); 
insert into loans values(1623,'akshay',200000,23000,0);
set sql_safe_updates=0;
set sql_safe_updates=1;
update loans set totalpay=loan_amount+intrest;
create trigger loan
after insert
on loans
for each row
set totalpay=loan_amount+intrest;

select * from loans;
use shiyas;
alter table zudio_sales_data add column total_price int;
select * from zudio_sales_data;

create trigger zudio
after insert
on zudio_sales_data
for each row
set total_price=price*quantity;

update zudio_sales_data set total_price=price*quantity;

insert into marks(roll_no,grade) select roll_no,grade from grades;
alter table marks drop column grade;
alter table marks add column grade varchar(20);

delimiter //
create procedure cm()
begin
	select region,max(sales) as max_sales from customer join market on customer.cust_id=market.cust_id group by region order by max_sales desc limit 1;
    end //
    delimiter ;
    
call cm();
    
delimiter //
create procedure sub_querry()
begin
	select region,customer_name from customer where exists(select sales from market where customer.cust_id=market.cust_id and sales=(select max(sales) from market));
end //
delimiter ;

call sub_querry();

 use shiyas;
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50) NOT NULL
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  OrderNumber INT NOT NULL,
  CustomerID INT,
  constraint fk_custid foreign key (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName)
VALUES (1, 'John'), (2, 'Jane'), (3, 'Bob');
desc customers;

INSERT INTO Orders (OrderID, OrderNumber, CustomerID)
VALUES (1, 101, 1), (2, 102, 2), (3, 103, 3);
desc orders;

create table course(
id int primary key auto_increment,
course varchar(25) not null);
describe course;

create table fee(
fee int,
emi int,
id int,
foreign key(id) references course(id));
describe fee;

insert into course(course) values('data science'),('data analyst'),('sap');
select * from course;

insert into fee values(45000,51000,1),(28000,31000,2),(34000,39000,3);
select * from fee;

create table employeee(
id int auto_increment primary key,
name varchar(30) not null,
base_pay int ,
overtime int ,
total_pay int);

create table overtime(
id int,
hours int);
desc employeee;
desc overtime;

alter table overtime
modify column hours int not null;

create table loans(
id int ,
name char(25),
loan_amount int ,
intrest int ,
totalpay int); 
insert into loans values(1623,'akshay',200000,23000,0);

select * from loans;
desc loans;

alter table loans
modify column id int not null;

create table data(
join_date date,
name char(20),
age int,
job char(25),
salary int);

ALTER TABLE data
ADD PRIMARY KEY (name);

alter table data 
add unique (job);

alter table data
modify column age int not null;

ALTER TABLE overtime
ADD FOREIGN KEY (id) REFERENCES employeee(id);

describe data;
desc overtime;

