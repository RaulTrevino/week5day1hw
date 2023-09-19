--1. How many actors are there with the last name ‘Wahlberg’?
SELECT * 
FROM actor
WHERE last_name = 'Wahlberg';
--output: 2  nick and daryl wahlberg

--
--2. How many payments were made between $3.99 and $5.99?
SELECT count(payment)
FROM payment
WHERE  amount BETWEEN 3.99 AND 5.99;   

---output: 5,607



--
--3. What film does the store have the most of? (search in inventory)
SELECT count(film_id),film_id
FROM inventory
GROUP by film_id
HAVING count(film_id) >7;

--output there are 72 films that have a max of 8


--
--4. How many customers have the last name ‘William’?
SELECT * 
FROM customer
WHERE last_name = 'Williams';

--output: 0 have a last name william but 1 has a last name of williams

--



--5. What store employee (get the id) sold the most rentals?
SELECT count(staff_id)
FROM rental
GROUP BY staff_id;

-- staff id 1 sold 8040 and staff id2 sold 8004





--6. How many different district names are there?

SELECT DISTINCT district
FROM store,address;

--output = 378



--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count desc;

--output film 508 has the most actors in it 

--
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)


SELECT last_name
FROM customer
WHERE last_name  LIKE '__%es' AND store_id = 1 ;

--output = 13


--
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT count(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY payment_id > 250; 
--output = 1,257 maybe

--
--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT count(rating),rating
FROM film
GROUP BY rating;
--output pg-13 has most movie total
