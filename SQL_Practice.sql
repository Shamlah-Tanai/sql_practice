INSERT INTO students (nome, email) VALUES
('Mario Rossi', 'mario.rossi@example.com'),
('Luisa Bianchi', 'luisa.bianchi@example.com');
SELECT * FROM students;
SELECT * FROM students WHERE id = 2;
SELECT nome FROM students;
select * from orders

UPDATE students
SET email = 'shamlah.tanai@example.com'
WHERE id = 2;

UPDATE students
SET email = 'shamlah.tanai@example.com' where id = 2;


DELETE FROM students WHERE id = 2;
DELETE FROM students;
TRUNCATE TABLE students RESTART IDENTITY;

Create Table animals(
id SERIAL primary key, 
name VARCHAR(50) not null, 
age integer,
color varchar(50) not null );


INSERT INTO animals(name, age, color)VALUES
('Cat', 2, 'red'),
('Dog', 3, 'black'),
('Monkey', 4, 'yellow'),
('Rabbit', 1, 'white');

SELECT * FROM ANIMALS

DELETE FROM ANIMALS
TRUNCATE TABLE ANIMALS RESTART IDENTITY;

SELECT 
    a.name AS "Animal Name",
    a.age AS "Animal Age",
    a.color AS "Animal Color"
FROM 
    animals AS a;
SELECT DISTINCT name 
FROM animals;
SELECT DISTINCT AGE FROM ANIMALS; 
Select distinct color from ANIMALS;


SELECT * 
FROM animals 
WHERE age BETWEEN 2 AND 4;
Select * 
from animals where color = 'black'; 


SELECT * 
FROM animals 
WHERE age > 3;


SELECT * 
FROM animals 
WHERE color = 'red' AND age < 5;

SELECT * 
FROM animals 
WHERE name IN ('Cat', 'Dog');

SELECT DISTINCT name, color 
FROM animals;
Select  distinct name, color, age from animals;

SELECT color, MAX(age) AS max_age
FROM animals
GROUP BY color;

SELECT color, AVG(age) AS avg_age
FROM animals
GROUP BY color;

SELECT 
    a.name AS "Animal Name",
    a.age AS "age",
    a.color AS "HAYWAN RANG"
FROM 
    animals AS a;

INSERT INTO animals(name, age, color)VALUES
('Cat', 2, 'red'),
('Dog', 3, 'black'),
('Monkey', 4, 'yellow'),
('Loin', 3, 'yellow'),
('Tiger', 5, 'yellow'),
('Tiger', 3, 'red'),
('Rabbit', 1, 'white');

Delete from animals;
select * from animals;

SELECT name, AVG(age) AS avg_age
FROM animals
GROUP BY name;


SELECT name, COUNT(age) AS "count of age"
FROM animals GROUP BY name;

SELECT name, AVG(age) AS "count of age"
FROM animals GROUP BY name;

SELECT name, SUM (age) AS "count of age"
FROM animals GROUP BY name;

SELECT name, MAX(age) AS "count age"
FROM animals GROUP BY name;
SELECT name, MIN(age) AS "count age"
FROM animals GROUP BY name;

Select MAX(AGE)as "max age" from animals;
Select MIN(AGE)as "max age" from animals;

SELECT * FROM animals ORDER BY name DESC;
SELECT * FROM animals ORDER BY age, name ASC LIMIT 3;

SELECT * FROM animals LIMIT 3;


SELECT * FROM animals  ORDER BY age LIMIT 3;


-- expline 
EXPLAIN SELECT * FROM animals;

SELECT name, color as "color/email" FROM animals
UNION
SELECT nome, email FROM students;


select * from students
select * from orders



INSERT INTO orders (students_id, date_order, totale)
VALUES (3, '2025-07-18', 20.0);

INSERT INTO orders (students_id, date_order, totale)
VALUES (4, '2025-07-17', 29.0);

SELECT students.nome, orders.date_order
FROM students INNER JOIN orders ON
students.id = orders.students_id;


SELECT orders.date_order, students.nome
FROM orders LEFT JOIN students ON
students.id = orders.students_id;



SELECT tabella1.colonna FROM tabella1
WHERE (SELECT tabella2.colonna FROM tabella2);


SELECT orders.date_order
FROM orders
WHERE orders.students_id IN (SELECT id FROM students);

