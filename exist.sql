# exist

select Customer_Name from customer where exists(select sales from market where customer.cust_id=market.cust_id and quantity<5);

select grade from grades where exists(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);

select region,customer_name from customer where exists(select sales from market where customer.cust_id=market.cust_id and sales=(select max(sales)

# all

select roll_no,grade from grades where roll_no=all(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);

# any

select roll_no,grade from grades where roll_no=any(select roll_no from marks where marks.roll_no=grades.roll_no and mark=23);
