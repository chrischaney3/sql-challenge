-- Query tool
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e, salaries as s
WHERE e.emp_no = s.emp_no;
-- Query successfully works
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date LIKE '%1986' ;
-- Query works successfully
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager as dm, departments as d, employees as e
WHERE e.emp_no = dm.emp_no;
-- Query is successful
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp as de, departments as d, employees as e
WHERE e.emp_no = de.emp_no;
-- Query is successful
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name LIKE 'Hercules' AND e.last_name LIKE 'B%';
-- Query is successful
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees as e
WHERE e.emp_no IN
	(
	SELECT de.emp_no
	FROM dept_emp AS de, departments AS d
	WHERE de.dept_no = d.dept_no AND d.dept_name LIKE 'Sales'
	);
-- Query is successful
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');
-- Query is successful
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
-- Query is successful





