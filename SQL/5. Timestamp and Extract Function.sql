SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE

CREATE TABLE payment2
(
	"customer_id" int8 PRIMARY KEY,
	"amount" int NOT NULL,
	"mode" varchar(50),
	"payment_date" DATE
);

COPY payment2(customer_id, amount, mode, payment_date)
FROM 'D:\payment.csv'
DELIMITER ','
CSV HEADER;


SELECT EXTRACT(DOW FROM payment_date) AS day_of_week, payment_date
FROM payment
ORDER BY day_of_week ASC


