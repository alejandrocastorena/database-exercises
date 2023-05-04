USE employees;

SELECT DISTINCT title FROM titles;
-- There are 7 titles in total

SELECT last_name 
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%'
GROUP BY last_name;

SELECT first_name , last_name
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%'
GROUP BY first_name ,last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND  last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND  last_name NOT LIKE '%qu%'
GROUP BY last_name;
-- Chleq , Lindqvist, Qiwen

SELECT first_name, COUNT(*) AS name_by_gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender , first_name;

SELECT LOWER(CONCAT(SUBSTR(first_name,1, 1), SUBSTR(last_name,1, 4), '_',
SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2))) AS username,COUNT(*) AS count_of_usernames
FROM employees
GROUP BY username
-- yes there are 13,251 duplicates, highest # of times a username shows up is 5 times




