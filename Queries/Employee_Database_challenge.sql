--Deliverable 1: The Number of Retiring Employees by Title
-- List of Retiring employees
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
	t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ;
	
-- Use Dictinct with Orderby to remove duplicate rows	
	SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
	INTO unique_titles
	FROM retirement_titles as rt
	WHERE rt.to_date = '9999-01-01'
	ORDER BY rt.emp_no, rt.to_date DESC;

-- Count the number retiring by job title
SELECT count(title) AS title_count,
       title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title_count DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (e.emp_no)
    e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
	de.from_date,
    de.to_date,
	 t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	 AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no; 
	 

