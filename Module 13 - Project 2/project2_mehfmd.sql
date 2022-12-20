/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        November 18, 2022
 * Module:      13
 * Challenge:   Project 2
 ****************************************************************************/

-- 1. Write a query to create a view named “EmployeesPerRegion” that shows the region_name and the number of employees from that region in a column called “Number of Employees”.
CREATE VIEW EmployeesPerRegion AS
SELECT r.region_name, COUNT(e.employee_Id) AS "Number of Employees"
FROM regions r, countries c, locations l, departments d, employees e
WHERE e.department_id = d.department_id AND d.location_id = l.location_id AND l.country_id = c.country_id AND c.region_id = r.region_id
GROUP BY r.region_name;

        -- Query the EmployeesPerRegion to show the number of employees from the Americas.
        SELECT *
        FROM EmployeesPerRegion
        WHERE region_name = "Americas"
        GROUP BY region_name;


-- 2. Write a query to create a view named “managers” to display all the managers. Include the manager’s name (first, last), phone number, email, job title, and department name.
CREATE VIEW managers AS
SELECT e.first_name, e.last_name, e.phone_number, e.email, j.job_title, d.department_name
FROM employees e, departments d, jobs j
WHERE e.department_id = d.department_id AND e.job_id = j.job_id AND e.employee_Id IN (SELECT manager_id 
                                                                                        FROM employees 
                                                                                        GROUP BY manager_id);

        -- Query the managers view to show the number of managers in each department.
            SELECT department_name, COUNT(first_name) AS 'Number of Managers'
            FROM managers
            GROUP BY department_name
            ORDER BY COUNT(first_name) DESC; 

-- 3. Write a query to create a view named “DependentsByDepartment” to get a count of how many dependents there are in each department.
CREATE VIEW DependentsByDepartment AS
SELECT dt.department_name, COUNT(d.dependent_id) AS NumberOfDependents
FROM dependents d, departments dt, employees e
WHERE d.employee_id = e.employee_id AND e.department_id = dt.department_id
GROUP BY dt.department_name;

        -- Query the DependentsByDepartment view to show the department with the largest number of dependents. This should show the department name and the number of dependents.
            SELECT *
            FROM DependentsByDepartment
            ORDER BY NumberOfDependents DESC
            LIMIT 2;
-- 4. Write a query to create a view named “HiresByYear” that calculates the number of employees hired each year. Remember the SQL $year function.
CREATE VIEW HiresByYear AS
SELECT YEAR(hire_date) AS "Year", COUNT(employee_id) AS "Employees Hired"
FROM employees
GROUP BY YEAR(hire_date);

        -- Query the HiresByYear view to show the number of hires in 1997.
        SELECT *
        FROM HiresByYear
        WHERE Year = 1997;
-- 5. Write a query to create a view named “SalaryByDepartment” to calculate total salaries for each department.
CREATE VIEW SalaryByDepartment AS
SELECT d.department_name, SUM(e.salary) AS 'Total Salary'
FROM employees e, departments d
WHERE e.department_id = d.department_id
GROUP BY d.department_id;

        -- Query the SalaryByDepartment view to show the total salary for the Finance department.
        SELECT *
        FROM SalaryByDepartment
        WHERE department_name = "Finance";

-- 6. Write a query to create a view named “SalaryByJobTitle” to calculate total salaries for each job title.
CREATE VIEW SalaryByJobTitle AS
SELECT j.job_title, SUM(e.salary) AS TotalSalary
FROM employees e, jobs j
WHERE j.job_id = e.job_id
GROUP BY j.job_title;

        -- Query the SalaryByJobTitle view to show the job title and total salary for the title with the highest total salary.
        SELECT *
        FROM SalaryByJobTitle
        ORDER BY TotalSalary DESC
        LIMIT 1;


-- 7. Write a query to create a view named “EmployeeDependents” that calculates the number of dependents each employees has. This query should show employees even if they have 0 dependents. Display the employee name (first, last), email, phone number, and number of dependents. Hint: left or right join.
CREATE VIEW EmployeeDependents AS
SELECT e.first_name, e.last_name, e.email, e.phone_number, COUNT(d.dependent_id) AS numberOfDependents
FROM employees e
LEFT JOIN dependents d ON d.employee_id = e.employee_id
GROUP BY e.employee_id;

        -- Query the EmployeeDependents view to show employees with no children". Show employee name (first, last), email, phone number, and number of dependents.
        SELECT *
        FROM EmployeeDependents
        WHERE numberOfDependents = 0;


-- 8. Write a query to create a view named “CountryLocation” that calculates the number of locations in each country. This query should show countries even if they have 0 locations. Display the country name and number of locations.
CREATE VIEW CountryLocation AS
SELECT c.country_name, COUNT(l.location_id) AS NumberOfLocations
FROM locations l
RIGHT JOIN countries c ON c.country_id = l.country_id
GROUP BY c.country_name;

        -- Query the CountryLocation view to show countries with no locations". Show country name and number of locations.
        SELECT *
        FROM CountryLocation
        WHERE NumberOfLocations = 0;
