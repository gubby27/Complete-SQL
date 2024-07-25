-- find the average value
select avg(amount) from payment

-- filter the customer data > avg value
-- SUB QUERY
-- comaparison operator
SELECT *
FROM payment
WHERE amount > (select avg(amount) from payment)


-- Using IN query, if you have 2 columns same in different table, then you can use IN, similar to join
SELECT customer_id, amount, mode
from payment
where customer_id IN (select customer_id from customer)

-- EXISTS QUERY
SELECT first_name, last_name
FROM customer c
WHERE EXISTS (	select customer_id, amount
				from payment p
				where p.customer_id = c.customer_id
				and amount >50 )


-- with amount column
SELECT c.first_name, c.last_name, p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
WHERE p.amount > 50;

 



