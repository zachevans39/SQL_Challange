Drop table departments

Create Table departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR not NULL,
	PRIMARY KEY (dept_no)
);
Select * From departments


Create TABLE dept_emp (
	emp_no integer,
	dept_no VARCHAR not NULL,
	Foreign Key (dept_no) REFERENCES departments(dept_no)
);

SELECT * From dept_emp


Create TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no integer

);

Select * From dept_manager

DRop Table employees
Create Table employees(
	emp_no integer,
	emp_title VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

Select * From employees

Create Table salaries(
	emp_no integer,
	salary integer
);

Select * From salaries

Create Table titles(
	title_id VARCHAR,
	title VARCHAR
);

Select * From titles

	
	