-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
from employees
JOIN salaries on employees.emp_no=salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name
FROM departments
JOIN dept_manager ON departments.dept_no= dept_manager.dept_no
JOIN employees ON dept_manager.emp_no= employees.emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp on employees.emp_no=dept_emp.emp_no
JOIN departments on departments.dept_no=dept_emp.dept_no;
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT employees.first_name,employees.last_name, employees.gender
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';
--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT departments.dept_name, departments.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
WHERE dept_name='Sales';
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN departments on dept_emp.dept_no=departments.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
WHERE dept_name= 'Sales'
OR dept_name='Development'
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name, COUNT(last_name)AS FREQUENCY
FROM employees
GROUP BY last_name
ORDER BY
Count(last_name) DESC


