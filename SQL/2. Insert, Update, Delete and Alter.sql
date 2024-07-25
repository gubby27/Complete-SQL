CREATE TABLE classroom(
	"RollNo" int8 PRIMARY KEY,
	"S_Name" varchar(20) NOT NULL,
	"House" varchar(10) NOT NULL,
	"Grade" char(1)
);

INSERT INTO classroom(
	"RollNo", "S_Name", "House", "Grade"
)
VALUES
(1, 'Sam', 'Akash', 'B'),
(2, 'Ram', 'Agni', 'A'),
(3, 'Shyam', 'Jal', 'B'),
(4, 'Sundar', 'Agni', 'A'),
(5, 'Ram', 'Yayu', 'B');


SELECT "S_Name", "Grade" FROM classroom
WHERE "Grade" = 'A'


SELECT "RollNo", "S_Name" FROM classroom
SELECT DISTINCT "Grade" FROM classroom

SELECT * FROM classroom
WHERE "Grade" = 'A' AND "RollNo" > 3

SELECT * FROM classroom
ORDER BY "S_Name" ASC;
