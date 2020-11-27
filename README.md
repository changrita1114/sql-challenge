## sql-challenge
### Background
It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering
2. Data Analysis

There were three steps to complish this project.
#### Data Modeling
Inspected the CSVs and sketched out an ERD of the tables.
![ERD img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/ERD_fyc.png?raw=true)
#### Data Engineering
* The information was used to create a table schema for each of the six CSV files. Data types, primary keys, foreign keys, and other constraints were specified.
* Each CSV file was imported into the corresponding SQL table. The data was imported in the same order that the tables were created and account for the headers when importing to avoid errors.
#### Data Analysis
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
![query 1 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_1.png?raw=true)
2. List first name, last name, and hire date for employees who were hired in 1986.
![query 2 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_2.png?raw=true)
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
![query 3 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_3.png?raw=true)
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
![query 4 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_4.png?raw=true)
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
![query 5 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_5.png?raw=true)
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
![query 6 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_6.png?raw=true)
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
![query 7 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_7.png?raw=true)
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
![query 8 img](https://github.com/changrita1114/sql-challenge/blob/main/EmployeeSQL/query_images/query_8.png?raw=true)

## Disclaimer
The resources of this master branch are only for educational purposes. All reserved rights belong to UCSD Data Science and Visualization Boot Camp.
