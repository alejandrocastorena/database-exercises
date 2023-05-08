USE employees;

SELECT 
dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW()
ORDER BY dept_name;

SELECT 
dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW() AND e.gender = 'F'
ORDER BY dept_name; 


SELECT title AS Title, count(*) AS Count
FROM departments AS d
    JOIN dept_emp AS de ON d.dept_no = de.dept_no
    JOIN employees AS e ON de.emp_no = e.emp_no
    JOIN titles AS t ON e.emp_no = t.emp_no
WHERE dept_name LIKE 'Customer Service' AND de.to_date > NOW() AND t.to_date > NOW()
GROUP BY title
ORDER by title;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Name', salary AS Salary
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY dept_name;

SELECT dept_emp.dept_no,dept_name, count(*) AS num_employees
FROM dept_emp
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date > NOW()
GROUP BY dept_emp.dept_no, dept_name
ORDER BY dept_no;

SELECT dept_name, AVG(salary) AS average_salary
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_emp.to_date > NOW() AND salaries.to_date > NOW()
GROUP BY dept_name
ORDER BY average_salary DESC
LIMIT 1;

SELECT first_name, last_name
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name LIKE 'Marketing'
ORDER BY salary DESC
LIMIT 1;

SELECT first_name, last_name, salary, dept_name
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY salary DESC
LIMIT 1;

SELECT d.dept_name, ROUND(AVG(s.salary),0) AS avg_dept_salary
FROM departments d
JOIN dept_emp de USING (dept_no)
JOIN salaries s USING (emp_no)
GROUP BY d.dept_name
ORDER BY avg_dept_salary DESC;




