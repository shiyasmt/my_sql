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