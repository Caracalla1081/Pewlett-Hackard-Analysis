SELECT 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date

FROM employees
LEFT JOIN titles ON employees.emp_no = titles.emp_no
WHERE birth_date > '1945-01-01'
AND to_date = '9999-01-01'
AND titles.title LIKE '%Manager%'
ORDER BY emp_no
;

SELECT COUNT (departments.dept_name),
	titles.title
FROM employees
	JOIN titles ON employees.emp_no = titles.emp_no
	JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
	JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE birth_date > '1945-01-01'
AND to_date = '9999-01-01'
GROUP BY titles.title
ORDER BY COUNT (departments.dept_name) DESC;

	
