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