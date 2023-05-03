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

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY first_name;
-- Irena Reutenauer , Vidya Simmen

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY first_name , last_name;
-- Irena Acton , Vidya Zweizig

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY last_name , first_name;
-- Irena Acton , Maya Zyda

SELECT * 
FROM employees
WHERE last_name LIKE '%E' 
And last_name LIKE 'E%'
ORDER BY emp_no;
-- 10021 Ramzi Erde , 499648 Tadahir Erde

SELECT * 
FROM employees
WHERE last_name LIKE '%E' 
And last_name LIKE 'E%'
ORDER BY hire_date DESC;
-- 899 returned , Teiji Eldridge , Sergi Erde

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC;
-- 362 returned, Douadi Pettis, Khun Bernini









