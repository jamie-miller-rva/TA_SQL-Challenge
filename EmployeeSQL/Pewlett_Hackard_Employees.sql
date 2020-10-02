-- Drop tables if it already exists
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

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
	hire_date DATE
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

---------------------------------------------------------------
-- Sketch out Enterprise Relational Diagram
-- Establish Primary and Foreign Keys
-- I used dbdiagram.io as an ERD tool 
-- This created the six tables
-- I used these six tables to outline primary and foreign keys

