-- Retrieve specified columns from Employees table.
SELECT
	emp_no,
	first_name,
	last_name
FROM
	employees
;

-- Retrieve specified columns from Titles table
SELECT
	title,
	from_date,
	to_date
FROM
	titles
;

-- Create a new table joining both tables
SELECT 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
LEFT JOIN titles ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no
;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles

WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Retrieve employee count by most recent job title
SELECT COUNT(title),
title
FROM unique_titles
GROUP BY title
Order BY COUNT(title) DESC;

-- Create Mentorship eligibility table
-- Retrieve data from employees table
SELECT
	emp_no,
	first_name,
	last_name,
	birth_date
FROM
	employees;
	
--Retrieve data from department employee table
SELECT 
	from_date,
	t0_date
FROM
	dept_emp;

--Retrieve data from titles table
SELECT 
	title
FROM
	titles;
	
--Create new table	
SELECT DISTINCT ON(emp_no) 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.t0_date,
	titles.title
INTO mentorship_eligibility
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN titles ON employees.emp_no = titles.emp_no
WHERE dept_emp.t0_date = '9999-01-01'
AND employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY employees.emp_no;