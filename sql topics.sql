/*

create database and tables  
			eg:-    create database shiyas;
					use shiyas;
					create table students (
					name char(),
					age int,
					course char (20));
                    
insert table values  
			eg:-	insert into students values('shiyas',21,'data science'),('akshay',21,'data analyst'),('basil',20,'data analyst');
            
delete table values 'truncate'
			eg:-	truncate students;

aggricate functions
	sum				eg:-  select sum(totalpay) from salaries;
	max				eg:-  select max(TotalPay),EmployeeName from salaries group by employeeName order by max(totalpay) desc limit 1;
	min				eg:-  select min(TotalPay) as tp,EmployeeName from salaries group by employeeName order by tp limit 1;
	count			eg:-  select count(totalpay) from salaries;
	avg				eg:-  select avg(totalpay) from salaries;
    
    
count(distinct) filter multiple values
					eg:-  select count(distinct jobtitle) from salaries;
                    											
											   EmployeeName , job title , totalpay = column name
																		  salaries = table name
																		  desc     = disending order
    
        
*/
