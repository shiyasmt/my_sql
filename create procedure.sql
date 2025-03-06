delimiter //
create procedure cm()
begin
	select region,max(sales) as max_sales from customer join market on customer.cust_id=market.cust_id group by region order by max_sales desc limit 1;
    end //
    delimiter ;
    
    call cm();
    
delimiter //
create procedure sub_querry()
begin
	select region,customer_name from customer where exists(select sales from market where customer.cust_id=market.cust_id and sales=(select max(sales) from market));
end //
delimiter ;

call sub_querry();