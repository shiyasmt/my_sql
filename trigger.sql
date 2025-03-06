
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