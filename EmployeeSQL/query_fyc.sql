--1.List the following details of each employee: employee number, last name, 
--first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
FROM employees 
INNER JOIN salaries As salary
ON employees.emp_no = salary.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND  hire_date < '1987-01-01'

--3.List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT  manager.dept_no, dept.dept_name,manager.emp_no,empl.last_name,empl.first_name
FROM dept_manager AS manager
INNER JOIN departments AS dept
ON manager.dept_no = dept.dept_no
INNER JOIN employees AS empl
ON (manager.emp_no = empl.emp_no);

--4.List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT dept_emp.emp_no, empl.last_name, empl.first_name,dept.dept_name
FROM departments AS dept
INNER JOIN dept_emp AS dept_emp
ON dept_emp.dept_no = dept.dept_no
INNER JOIN employees AS empl
ON dept_emp.emp_no = empl.emp_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name,dept.dept_name
FROM employees
INNER JOIN dept_emp AS dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments AS dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'

--7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name,dept.dept_name
FROM employees
INNER JOIN dept_emp AS dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments AS dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
