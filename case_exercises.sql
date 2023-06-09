USE employees;

SELECT
de.emp_no, de.dept_no, de.from_date AS start_date,
de.to_date AS end_date,
de.to_date > NOW() AS is_current_employee
FROM dept_emp de
ORDER BY emp_no
LIMIT 100;

SELECT
first_name,last_name,
LEFT(last_name, 1) AS first_letter_of_last_name,
CASE
WHEN LEFT(last_name, 1) <= 'H' THEN 'A-H'
WHEN SUBSTR(last_name, 1, 1) <= 'Q' THEN 'I-Q'
WHEN LEFT(last_name, 1) <= 'Z' THEN 'R-Z'
END AS alpha_group
FROM employees;

SELECT
COUNT(CASE WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31' THEN birth_date ELSE NULL END) AS '50s',
COUNT(CASE WHEN birth_date BETWEEN '1960-01-01' AND '1969-12-31' THEN birth_date ELSE NULL END) AS '60s'
FROM employees;
-- 182,886 in the 50s and 117,138 in the 60s

SELECT
CASE
WHEN d.dept_name IN ('Research', 'Development') THEN 'R&D'
WHEN d.dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
WHEN d.dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
WHEN d.dept_name IN ('Finance', 'Human Resources') THEN 'Finanace & HR'
ELSE d.dept_name
    END AS dept_name, salary
FROM departments d
JOIN dept_emp de USING (dept_no)
JOIN salaries s USING (emp_no)
WHERE s.to_date > NOW() AND de.to_date > NOW()
;

