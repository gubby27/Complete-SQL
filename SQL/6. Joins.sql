Select * from customer

Delete from customer
where customer_id = 11;

-- right join
SELECT  *
FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id


-- full outer join
SELECT  *
FROM customer AS c
FULL OUTER JOIN payment AS p
ON c.customer_id = p.customer_id