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
                                                                          
select now();					currect date and time 
select curtime();				currect time
select curdate() 				currect date
select dayname('2023/8/19');  	this date day name


mathematics functions in sql :- 

		select abs(-123);      			negative to positive
        
		select ceiling(25.3);       	next higher number
		select floor(25.8); 			previous higher number		
		select round(25.5);				rounding values
		select round(25.565,2);     	rounding in two decimal point

		select pi();					pi values(3.14...)
		select sqrt(9);					sqaure root
		select rand();					random number
		select rand()*11;				random number multiply 11
		select floor(rand()*11);		previous higher number in random number multiply 11
		select floor(rand()*60+20);		
		select floor(rand()*60+60);
    
Alter table 
		rename
										eg:-alter table table_name  rename column column_name to new_name;
        add column
										eg:- alter table table_name add column column_name data_type;
        drop column
										eg:-alter table table_name drop column column _name;
        modify
										eg:-alter table table_name modify column column_name data_type;
        add costraint		(condition apply for null values or duplicate values not allowed in column)
        
						not null (null values not allowed)
                        unique   (not duplicate values)
                        primary key  (unique and not null)
                        auto_increment(continuos values auto)
        
        
        

update 
										eg:-update table_name set column_name=update_value where `another_column_name`='another_column_value';

		set sql_safe_updates=0;		(UPDATE OPTION LOCK OPEN CODE)
		set sql_safe_updates=1;		(UPDATE OPTION LOCK CLOSE CODE)

insert into table_name values('maruthi',18,3,2000,'5000$');

case
	(select case)
	eg(1):-			select roll_no,mark,
					case
						when mark>25 then 'the student is passed'
						when mark=25 then 'the student is just passed'
						else 'the student is failed'
					end as result
					from marks;
     
	(update case)
	eg(2):-			update marks set grade=case
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
                    
JOIN IN TWO TABLES
					
		LEFT JOIN		
						select * from first_table left join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables;
        
		RIGHT JOIN
						select * from first_table right join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables;
                      
		FULL JOIN 
						select * from first_table full join second_table;

UNIONS
		UNION 		
						select * from first_table left join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables
                        union
                        select * from first_table right join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables;
                        
		UNION ALL
						select * from first_table left join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables
                        union all
                        select * from first_table right join second_table on first_table.same_column_name_in_two_tables=second_table.same_column_name_in_two_tables;
                        
sub querry (multiple select option)
			
				eg:-	select * from film where rental_duration > (select avg(rental_duration) from film); 
                
                

                        
*/
