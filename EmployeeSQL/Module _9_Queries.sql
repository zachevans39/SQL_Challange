Select * From departments
SELECT * From dept_emp
Select * From dept_manager
Select * From employees
Select * From salaries
Select * From titles

--List the employee number, last name, first name, sex, and salary of each employee.
Select * From employees
select E.emp_no, E.last_name, E.first_name, E.sex, S.salary from employees as E
JOIN salaries as S 
ON E.emp_no = S.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date from employees where hire_date LIKE '%1986%'

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select E.emp_no, E.First_name, E.last_name, DM.dept_no, D.dept_name
From employees as E
Join dept_manager as DM
on E.emp_no = DM.emp_no
join departments as D
on D.dept_no = DM.dept_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select E.emp_no, E.First_name, E.last_name, DP.dept_no, D.dept_name
From employees as E
Join dept_emp as DP
on E.emp_no = DP.emp_no
join departments as D
on D.dept_no = DP.dept_no
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select E.first_name, E.last_name, E.sex from employees as E
where first_name =('Hercules')
and last_name like 'B%'
--List each employee in the Sales department, including their employee number, last name, and first name.
Select E.emp_no, E.First_name, E.last_name, DP.dept_no, D.dept_name
From employees as E
Join dept_emp as DP
on E.emp_no = DP.emp_no
join departments as D
on D.dept_no = DP.dept_no
Where dept_name = 'Sales'
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select E.emp_no, E.First_name, E.last_name, DP.dept_no, D.dept_name
From employees as E
Join dept_emp as DP
on E.emp_no = DP.emp_no
join departments as D
on D.dept_no = DP.dept_no
Where dept_name = 'Sales' or dept_name = 'Development'
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, count(*)
from employees
Group By last_name