--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--Retrieve the title, from_date, and to_date columns from the Titles table.
--Create a new table using the INTO clause.
--Join both tables on the primary key.
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
--Then, order by the employee number.
SELECT e.emp_no
	,e.first_name
	,e.last_name
	,ti.title
	,ti.from_date
	,ti.to_date
INTO retirment_titles
FROM employees as e
INNER JOIN titles as ti
	ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')	
	ORDER BY emp_no

--Export the Retirement Titles table from the previous step as retirement_titles.csv and 
--save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no
	,rt.first_name
	,rt.last_name
	,rt.title

INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;


SELECT COUNT (emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (emp_no) DESC



-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number 
-- 		for each set of rows defined by the ON () clause.

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
-- Filter the data on the to_date column to all the current employees, 
--		then filter the data on the birth_date columns to get all the employees whose 
--		birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.


SELECT DISTINCT ON (emp_no) e.emp_no
	,e.first_name
	,e.last_name
	,e.birth_date
	,de.from_date
	,de.to_date
	,ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN titles as ti
	ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND de.to_date = '9999-01-01'
ORDER BY e.emp_no





-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv 
--		and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
