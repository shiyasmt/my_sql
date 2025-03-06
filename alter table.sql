select * from  zudio_sales_data;
select count(city) from zudio_sales_data;
alter table zudio_sales_data rename column city to place;
alter table zudio_sales_data rename column store to  company;
alter table zudio_sales_data rename column company to store;
alter table zudio_sales_data rename column place to city;

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