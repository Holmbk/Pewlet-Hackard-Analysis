SELECT e.emp_no,
    e.first_name,
	e.last_name,
   ti.title,
    ti.from_date,
    ti.to_date
INTO retire_title
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no)r.emp_no,
r.first_name,
r.last_name,
r.title

INTO unique_title
FROM retire_title as r
WHERE r.to_date = ('9999-01-01')
ORDER BY r.emp_no,  r.to_date DESC;

--Retiring titles totals per title
SELECT title,
	COUNT(*) AS "count"
INTO retiring_titles
FROM unique_title
GROUP BY title
ORDER BY count DESC, title;

-- Deliverable 2: Employees elligible for mentorship
SELECT DISTINCT ON (e.emp_no)e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
   de.to_date,
    ti.title
INTO mentor_ely
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = ('9999-01-01')) AND
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;