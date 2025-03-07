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