SELECT * FROM sakila.film;
use sakila;
# find customers who have rented more than 10 films:

select * from customer where customer_id in (select customer_id from rental group by customer_id having count(*)>10);

# find films with a rental duration greater than the average rental duration:

select * from film;
select * from film where rental_duration > (select avg(rental_duration) from film); 

# find customers who have rented all films in the 'action' category:
select count(customer_id),`name` from customer c join rental r on c.customerid=r.customer_id join inventory i on c.store_id=i.store_id 
join film_category fc on i.film_id=fc.film_id join category cc on fc.category_id=cc.category_id group by `name` having name='Action';

select * from customer where not exists (select * from film_category join film on film_category.film_id=film.film_id
join category on film_category.category_id=category.category_id
where category.name='action' and film.film_id not in (select inventory.film_id from inventory
join rental on inventory.inventory_id=rental.inventory_id
where rental.customer_id=customer.customer_id)); 

select inventory.film_id from inventory
join rental on inventory.inventory_id=rental.inventory_id;
select * from customer;
alter table customer rename column customer_id to customerid;

# find films that have not been rented by customers from the 'USA':

/*select * from film where film_id not in (select inventory.film_id from inventory 
join rental on inventory.inventory_id=rental.inventory_id
join customer on rental.customer_id=customer.customer_id
where customer.country='united states');*/



# find the top 5 categories by number of films rented:

select category.name,count(*) as num_films_rented from category
join film_category on   

