CREATE TABLE customer
(
	"customer_id" int8 PRIMARY KEY,
	"first_name" varchar(50),
	"last_name" varchar(50),
	"email" varchar(100),
	"address_id" int8
);

COPY customer(customer_id, first_name, last_name, email, address_id)
FROM 'D\customer.csv'
DELIMITER ','
CSV HEADER;



SELECT UPPER(first_name) FROM customer
SELECT LOWER(first_name) FROM customer
SELECT SUBSTRING(first_name, 1, 3), first_name FROM customer
SELECT LENGTH(first_name), first_name FROM customer
SELECT CONCAT(first_name, last_name), first_name, last_name FROM customer
SELECT REPLACE(first_name, 'Mary', 'Mane'), first_name, last_name FROM customer



SELECT * FROM customer