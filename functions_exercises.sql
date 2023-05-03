USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%E'
AND last_name LIKE 'E%';

SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS full_name
FROM employees
WHERE last_name LIKE '%E'
AND last_name LIKE 'E%';

SELECT COUNT(*)
FROM employees
WHERE last_name LIKE '%E'
AND last_name LIKE 'E%';

SELECT DATEDIFF(NOW(), hire_date), hire_date, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25%';

SELECT MAX(salary) , MIN(salary)
FROM salaries;

SELECT LOWER(CONCAT(SUBSTR(first_name,1, 1), SUBSTR(last_name,1, 4), '_',
SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2))) AS username, first_name,
last_name, birth_date
FROM employees
LIMIT 10;





