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