CREATE TABLE payment
(
	"customer_id" int8 PRIMARY KEY,
	"amount" int NOT NULL,
	"mode" varchar(50),
	"payment_date" DATE
);

COPY payment(customer_id, amount, mode, payment_date)
FROM 'D:\payment.csv'
DELIMITER ','
CSV HEADER;



SELECT COUNT(*) FROM payment
SELECT SUM(amount) FROM payment
SELECT MAX(amount) FROM payment
SELECT ROUND(AVG(amount), 2) FROM payment

SELECT mode, SUM(amount) AS Total
FROM Payment
GROUP BY mode
ORDER BY Total ASC

SELECT mode, COUNT(amount) AS Total
FROM Payment
GROUP BY mode
HAVING COUNT(amount) >= 3
ORDER BY Total DESC


SELECT * FROM payment
