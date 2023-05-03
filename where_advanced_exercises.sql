USE employees;

SELECT *
FROM employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');
-- 10200,10397,10610

SELECT *
FROM employees
WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';
-- 10396, 10610, 10821, No

SELECT *
FROM employees
WHERE gender = 'M'
AND first_name = 'Irena' OR 'Vidya' OR 'Maya';
-- 10397, 10821, 11327

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%E' OR 'E%';

SELECT * 
FROM employees
WHERE last_name LIKE '%E'
AND last_name NOT LIKE 'E%'; 

SELECT * 
FROM employees
WHERE last_name LIKE '%E'
AND last_name LIKE 'E%';

SELECT * 
FROM employees 
WHERE hire_date LIKE '199%';
-- 10008, 10011, 10012

SELECT *
FROM employees 
WHERE hire_date LIKE '%12-25%';
-- 10050, 10456, 10463

SELECT *
FROM employees 
WHERE hire_date LIKE '199%'
AND hire_date LIKE '%12-25%';
-- 10050, 10456, 10517

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

