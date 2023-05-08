USE employees;

SELECT * FROM employees
WHERE hire_date = (
SELECT hire_date FROM employees
WHERE emp_no = 101010
);

SELECT title FROM titles
WHERE emp_no IN (
SELECT emp_no FROM employees
WHERE first_name = 'Aamod'
);

-- 59,900 former employees

/*  Current department mangagers that are female:
Isamu Legleitner, Karsten Sigstam, Lean DasSarma and Hilary Kambil
*/ 

SELECT first_name, last_name FROM employees
WHERE emp_no = (
SELECT emp_no FROM salaries
WHERE salary = (
SELECT MAX(salary) FROM salaries
)
);

/* $158,220 is the max current salary
and $17,309 is one STD from the salary
*/

SELECT count(*)
FROM salaries
WHERE to_date > now()
AND salary > (
(SELECT MAX(salary) FROM salaries WHERE to_date > now()) - 
(SELECT STDDEV(salary) FROM salaries WHERE to_date > now())
);


