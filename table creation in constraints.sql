create table student(
id int primary key auto_increment,
namee varchar(30) not null,
age int not null,
mark int,
check (mark<=24),
statuss char(20) default 'pass')

select * from student;

insert into student (namee,age,mark) values('farsin',20,15);
insert into student (namee,age) values('shamweel',23);
insert into student (namee,age) values('shiyas',23);
insert into student (namee,age,mark) values('ansil',23,23);
insert into student (namee,age,mark) values('shahil',24,20);


