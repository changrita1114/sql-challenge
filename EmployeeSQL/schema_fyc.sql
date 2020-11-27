--Drop table if exists
--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;

--Table of department
CREATE TABLE departments (
dept_no VARCHAR(255) NOT NULL,
dept_name VARCHAR(255) NOT NULL,
PRIMARY KEY (dept_no)
);
--Take a look of the data
SELECT * FROM departments;

--Table of dept_emp
CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(255) NOT NULL,
PRIMARY KEY(emp_no,dept_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);
--Take a look of the data
SELECT * FROM dept_emp;

--Table of dept_manager
CREATE TABLE dept_manager (
dept_no VARCHAR(255),
emp_no INT,
PRIMARY KEY(dept_no, emp_no)
);
--Take a look of the data
SELECT * FROM dept_manager;

--Table of titles
CREATE TABLE titles (
title_id VARCHAR(255),
title VARCHAR(255),
PRIMARY KEY(title_id)
);
--Take a look of the data
SELECT * FROM titles;

--Table of employees
CREATE TABLE employees (
emp_no INT,
emp_title_id VARCHAR(255),
birth_date VARCHAR(255),
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(255),
hire_date VARCHAR(255),
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 	
);
--Take a look of the data
SELECT * FROM employees;

--Table of salaries
CREATE TABLE salaries (
emp_no INT,
salary INT,
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--Take a look of the data
SELECT * FROM salaries;