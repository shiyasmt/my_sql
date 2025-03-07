use shiyas;
create index food on zomato(`Restaurant ID`,`Restaurant Name`(255),`code`);
describe zomato;