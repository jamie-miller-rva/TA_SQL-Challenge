-- Use Visual Studio Code to exam csv files
-- Create simple tables for use in ERD tool
-- primary and foreign keys not required at this time
-- these will be created after taking sktching out schema
-- tables can be initally created in the order of the csv files 
-- follow-up will include creating tables in order necessary
-- to create primary keys and then foreign keys

-- Create a table for departments
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

-- Create a table for dept_emp
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
);

-- Create a table for dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT
);

-- Create a table for employees
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,	
);

-- Create a table for salaries
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);


-- Create a table for titles
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

--------------------------------------------------------------
-- Import the code above into an Enterprise Relational Diagram
-- I used dbdiagram.io as an ERD tool
-- Since it allowed me to import the above code and 
-- created boxes for each of the six tables
-- I used these six tables to outline primary and foreign keys

-- I then created a second file called schema_PH_Employee.sql
-- and adjusted the sequence of the CREATE TABLE entries for each table 
-- I put the sequence in order necessary
-- creating primary key(s) before referencing a column as foreign key

-- Drop tables if it already exists 
-- Run without the "--" comment indicator if needed

-- DROP TABLE departments;
-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE employees;
-- DROP TABLE salaries;
-- DROP TABLE titles;

-- The first table created will be titles
-- in order to establish title_id (in titles table) as a primary key
-- and emp_no (in employees table) as a primary key
-- note primary keys and foreign keys should also be characterized as NOT NULL

-- Create first table for titles
-- Characterize title_id as primary key
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- Create table for employees
-- characterize emp_title_id (in titles) as foreign key 
-- characterize emp_no (in employees) as primary key
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,	
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no)
);

-- Create table for deparments
-- characterize dept_no (in departments) as a primary key
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

-- Create table for dept_manager
-- characterize emp_no (in employees) and dept_no (in departments) as foreign keys
-- characterize dept_no and emp_no (in dept_manager) as primary keys
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Create table for dept_emp
-- characterize emp_no (in employees) and dept_no (in departments) as foreign keys
-- characterize emp_no and dept_no (in dept_emp) as primary keys
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create table for salaries
-- characterize emp_no (in employees) as foreign key
-- characterize emp_no (in salaries) as primary key
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

-- Update ERD to include primary and foreign keys as created above
-- Save png file to respository

-- Update github (git add ., git commit -m"",git push)

-- Import data from csv files in Data Folder
-- Use the GUI feature by right clicking the specific table
-- And select Import/Export and make selections to import specific csv file
-- (verify import using GUI View/Edit Data - all rows)

-- departments 
-- dept_emp
-- dept_manager
-- employees
-- salaries
-- titles

---------------------------------------------------------------------------------------
-- END of Schemas file
-- Data Analysis found in Queries_Pewlett_Hackard_Employees.sql























