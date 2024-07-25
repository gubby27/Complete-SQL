CREATE TABLE customer
(
    "CustID" int8 PRIMARY KEY,
    "CustName" varchar(30) NOT NULL,
    "Age" int NOT NULL,
    "City" char(30),
    "Salary" numeric
);

INSERT INTO customer
("CustID", "CustName", "Age", "City", "Salary")
VALUES
(1, 'Sam', 26, 'Delhi', 9000),
(2, 'Ram', 27, 'Bombay', 10000);

UPDATE customer
SET "CustName" = 'Xam', "Age" = 32
WHERE "CustID" = 1;

DELETE FROM customer
WHERE "CustID" = 1;

ALTER TABLE customer
-- ADD COLUMN "Address" varchar(100);
ALTER COLUMN "Address" SET DATA TYPE int;

TRUNCATE TABLE customer;
DROP TABLE customer;


SELECT * FROM customer;
