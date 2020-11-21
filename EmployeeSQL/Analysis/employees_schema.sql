DROP TABLE If exists departments cascade;
DROP TABLE IF EXISTS employees cascade;
DROP TABLE IF EXISTS dept_manager cascade;
DROP TABLE IF EXISTS dept_emp cascade;
DROP TABLE IF EXISTS titles cascade;
DROP TABLE IF EXISTS salaries cascade;
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (dept_no),
  UNIQUE (dept_name)
);
CREATE TABLE employees (
  emp_no INT NOT NULL,
	emp_title varchar,
  birth_date DATE NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  gender VARCHAR NOT NULL,
  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no)
);
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE titles (
	title_id varchar NOT null,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id, title)
);
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, salary)
);