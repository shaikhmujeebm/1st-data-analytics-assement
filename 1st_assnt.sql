use mavenmovies;
-- Q1-Identify the primary keys and foreign keys in maven movies db. Discuss the differences
 -- primary keys is a unique values in the all tables from which we can extract the data
 -- foreign key is the connection tables between another tables primary key to extract the data
 
 -- Q2-List all details of actors
 select *from actor;
 
 -- Q3-List all customer information from DB.
 select *from customer;
 
 -- Q4-List different countries.
 select *from country;
 
-- Q5-Display all active customers.
 select *from customer;
 select first_name , Last_name , active from customer where active = 1;
 
-- Q6-List of all rental IDs for customer with ID 1.
select *from rental;
select rental_id , customer_id , staff_id from rental where staff_id = 1;

-- Q7-Display all the films whose rental duration is greater than 5 .
select *from film;
select title , rental_duration from film where rental_duration >5;

 -- Q8-List the total number of films whose replacement cost is greater than $15 and less than $20.
 select *from film;
 select title , replacement_cost from film where replacement_cost > 15 and replacement_cost < 20;
 
-- Q9-Display the count of unique first names of actors.
 select *from actor;
 select count(first_name) from actor; 
 
 -- Q10-Display the first 10 records from the customer table .
 select *from customer;
 select *from customer where customer_id limit 10;
 
 -- Q11-Display the first 3 records from the customer table whose first name starts with ‘b’.CHECK THIS
 select *from customer;
 select customer_id , first_name from customer where first_name Like 'B%' and customer_id limit 3;
 
-- Q12-Display the names of the first 5 movies which are rated as ‘G’.
 select *from film;
 select title , rating from film where rating = 'G' limit 5;
 
-- Q13-Find all customers whose first name starts with "a".-
select *from customer;
select first_name from customer where first_name like 'A%';

-- Q14-Find all customers whose first name ends with "a".
select *from customer;
select first_name from customer where first_name like '%A';

-- Q15-Display the list of first 4 cities which start and end with ‘a’.
 select *from city;
 select city from city where city like 'A%A' limit 4;
 
 -- Q16-Find all customers whose first name have "NI" in any position.
select *from customer;
select first_name from customer where first_name like '%NI%';

-- Q17-Find all customers whose first name have "r" in the second position .
select *from customer;
select first_name from customer where first_name like '_R%';

-- Q18-Find all customers whose first name starts with "a" and are at least 5 characters in length.
select *from customer;
select first_name from customer where first_name like 'A____%';

-- Q19-Find all customers whose first name starts with "a" and ends with "o".
select *from customer;
select first_name from customer where first_name like 'A%o';

-- Q20-Get the films with pg and pg-13 rating using IN operator.
Select *from film;
select title , rating from film where rating in ('PG','PG-13');

-- Q21-Get the films with length between 50 to 100 using between operator.
Select *from film;
select title , length from film where length between 50 and 100;

-- Q22-Get the top 50 actors using limit operator.
select *from actor;
 select *from actor where actor_id limit 50;
 
-- Q23-Get the distinct film ids from inventory table.
select *from inventory;
select distinct(film_id) from inventory;


