USE employees;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC;

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
ORDER BY hire_date 
LIMIT 5;

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
ORDER BY hire_date 
LIMIT 5 OFFSET 25;

