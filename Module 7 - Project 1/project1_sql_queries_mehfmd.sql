/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Spring 2022
 * Date:        October 7, 2022
 * Module:      7
 * Challenge:   Project1
 ****************************************************************************/

-- 1 .List all of the current employees first name, last name, salary and department name. (265332 rows returned)
SELECT e.first_name, e.last_name, s.salary, d.dept_name
FROM employees e, salaries s, departments d, dept_emp de
WHERE e.emp_no = s.emp_no AND e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND s.to_date = '9999-01-01';



-- 2. List the first name, last name, and salary of the current employees with the ten (10) highest salaries. 
-- (#1 Salary Tokuyasu Pesch 158220, #10 salary Weicheng Hatcliff  152687 )
SELECT e.first_name, e.last_name, s.salary
FROM employees e, salaries s
WHERE e.emp_no = s.emp_no AND s.to_date = '9999-01-01'
ORDER BY s.salary DESC
LIMIT 10;


-- 3. What is the total payroll (sum of all current salaries) for the company. (17291866123)
SELECT SUM(salary) AS "Total Payroll"
FROM salaries
WHERE to_date = '9999-01-01'; 


-- 4. Display a list of the unique titles for this company. 
-- (7 Titles: Senior Engineer, Staff, Staff Engineer, Senior Staff, Assistant Engineer, Technique Leader, Manager)
SELECT DISTINCT(t.title)
FROM titles t;

-- 5. List the first name, last name, and department name for all current department managers. 
-- Remember that a current manager has a to_date value of 9999-01-01. (9 results)
SELECT e.first_name, e.last_name, d.dept_name
FROM employees e, departments d, dept_manager dm
WHERE e.emp_no = dm.emp_no AND dm.dept_no = d.dept_no AND dm.to_date = '9999-01-01'



-- 6. How many employees does each department currently have? 
-- List the department name and number of employees in a column named “Number of Employees”.
SELECT d.dept_name, COUNT(de.dept_no) AS "Number of Employees"
FROM departments d, dept_emp de
WHERE d.dept_no = de.dept_no AND de.to_date = '9999-01-01'
GROUP BY d.dept_name;

-- 7. How many males and how many females have been hired by this company in its history?
SELECT e.gender, count(e.gender)
FROM employees e
GROUP BY e.gender;


-- 8. List the titles and the number of current employees that hold that title.
SELECT t.title, COUNT(e.emp_no)
FROM titles t, employees e
WHERE t.emp_no = e.emp_no AND t.to_date = '9999-01-01'
GROUP BY t.title;
