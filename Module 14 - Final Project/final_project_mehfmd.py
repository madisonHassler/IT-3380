"""
/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        December 9, 2022
 * Module:      14
 * Challenge:   Final Project
****************************************************************************/
"""
import mysql.connector


def print_menu():
    print("\nChoose an option")
    print("------------------------")
    print("------------ VIEW DATA ------------")
    print("1. View number of employees per region")
    print("2. View order totals by month")
    print("3. View departmnet with largest number of departments")
    print("4. View number of mployees per year")
    print("5. View total salary per department")
    print("6. View otal salary per job title")
    print("7. View employees with dependents")
    print("8. View number of locations per country")

    print("\n------------ ADD DATA ------------")
    print("9. Add a dependent")
    print("10. Add a job")

    print("\n------------ DELETE DATA ------------")
    print("11. Delete an employee")
    print("12. Delete a dependent")

    print("\n------------ UPDATE DATA ------------")
    print("13. Update employee first name")
    print("14. Update employee last name")
    print("15. Update job minimum salary")
    print("16. Update job maximum salary")

    print("\n------------ EXIT ------------")
    print("17. Exit Application")
    return


def get_user_choice():
    print_menu()
    choice = 0
    while True:
        try:
            choice = int(input("\nEnter Choice: "))
        except ValueError:
            print("Please enter a valid integer 1-17")
            continue
        if choice >= 1 and choice <= 17:
            print(f'You entered: {choice}')
            break
        else:
            print('The integer must be in the range 1-17')
    return choice


# 1
def get_EmployeesPerRegion(mycursor):
    print("Number of Employees Per Region")
    print("------------------------")

    region = input(
        "Enter region name for specific region or (All) to view all regions: ")
    if (region.upper() == 'ALL'):
        sql_query = "SELECT * FROM EmployeesPerRegion;"
    elif (region == ""):
        print("\nPlease enter a valid region or 'all'.")
        return
    else:
        sql_query = f"SELECT * FROM EmployeesPerRegion WHERE region_name = '{region}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThere are no employees in {region}\n")
    else:
        print('\n\n~~~~~~~~ Number of Employees Per Region ~~~~~~~~')
        for record in query_result:
            print(f"{record[0]}: {record[1]} employees\n")
    return


# 2
def get_managers(mycursor):
    print("Managers per Department")
    print("------------------------")

    department = input(
        "Enter department name for specific department or (All) to view all departments: ")
    if (department.upper() == 'ALL'):
        sql_query = f"SELECT department_name, COUNT(first_name) FROM managers GROUP BY department_name;"
    elif (department == ""):
        print("\nPlease enter a valid  department or 'all'.")
        return
    else:
        sql_query = f"SELECT department_name, COUNT(first_name) FROM managers WHERE department_name = '{department}' GROUP BY department_name;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"There are no managers in the {department} department")
    else:
        print('\n\n~~~~~~~~ Managers per Department ~~~~~~~~')
        for record in query_result:
            print(f"{record[0]}: {record[1]} manager(s)\n")
    return


# 3
def get_DependentsByDepartment(mycursor):
    print("Departments with the most Departments")
    print("------------------------")

    department = input(
        "Enter department name for specific department or (All) to view all departments: ")
    if (department.upper() == 'ALL'):
        sql_query = f"SELECT department_name, COUNT(first_name) FROM managers GROUP BY department_name;"
    elif (department == ""):
        print("\nPlease enter a valid department or 'all'.")
        return
    else:
        sql_query = f"SELECT department_name, COUNT(first_name) FROM managers WHERE department_name = '{department}' GROUP BY department_name;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"There are no managers in the {department} department")
    else:
        print('\n\n~~~~~~~~ Dependents per Department ~~~~~~~~')
        for record in query_result:
            print(f"{record[0]}: {record[1]} dependent(s)\n")
    return


# 4
def get_HiresByYear(mycursor):
    print("Hires by Year")
    print("------------------------")

    year = input(
        "Enter year for specific department or (All) to view all years:")
    if (year.upper() == 'ALL'):
        sql_query = "SELECT * FROM HiresByYear"
    elif (year == ""):
        print("\nPlease enter a valid year or 'all'.")
        return
    else:
        sql_query = f"SELECT * FROM HiresByYear WHERE Year = '{year}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThere are no employees in {year}\n")
    else:
        print('\n\n~~~~~~~~ Number of Hires Per Year ~~~~~~~~')
        for record in query_result:
            print(
                f"{record[0]}: {record[1]} hire(s)\n")
    return


# 5
def get_SalaryByDepartment(mycursor):
    print("Total Salary per Department")
    print("------------------------")

    department = input(
        "Enter department name for specific department or (All) to view all departments: ")
    if (department.upper() == 'ALL'):
        sql_query = "SELECT * FROM SalaryByDepartment"
    elif (department == ""):
        print("\nPlease enter a valid department or 'all'.")
        return
    else:
        sql_query = f"SELECT * FROM SalaryByDepartment WHERE department_name = '{department}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThe {department} department is does not exist\n")
    else:
        print('\n\n~~~~~~~~ Total salary per department ~~~~~~~~')
        for record in query_result:
            print(
                f"{record[0]}: ${record[1]}\n")
    return


# 6
def get_SalaryByJobTitle(mycursor):
    print("Salary per Job Title")
    print("------------------------")

    job = input(
        "Enter job title for specific job or (All) to view all job titles: ")
    if (job.upper() == 'ALL'):
        sql_query = "SELECT * FROM SalaryByJobTitle;"
    elif (job == ""):
        print("\nPlease enter a valid job title or 'all'.")
        return
    else:
        sql_query = f"SELECT * FROM SalaryByJobTitle WHERE Job_Title = '{job}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThe {job} job does not exist\n")
    else:
        print('\n\n~~~~~~~~ Total salary per job title ~~~~~~~~')
        for record in query_result:
            print(
                f"{record[0]}: ${record[1]}\n")
    return


# 7
def get_EmployeeDependents(mycursor):
    print("Employees with Dependents")
    print("------------------------")

    dependents = input(
        "Enter employee first name and last nare or (All) to see dependents data for employee(s): ")
    if (dependents.upper() == 'ALL'):
        sql_query = "SELECT * FROM EmployeeDependents;"
    elif (dependents == ""):
        print("\nPlease enter a valid department or 'all'.")
        return
    else:
        firstName, lastName = dependents.split()
        sql_query = f"SELECT * FROM EmployeeDependents WHERE first_name = '{firstName}' AND last_name = '{lastName}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\n{dependents} does not have any dependents\n")
    else:
        print('\n\n~~~~~~~~ Employees with dependents ~~~~~~~~')
        for record in query_result:
            print(
                f"{record[0]} {record[1]}: {record[4]} dependents\n")
    return


# 8
def get_CountryLocation(mycursor):
    print("Employees with Dependents")
    print("------------------------")

    country = input(
        "Enter country name or (All) to see location data for countrie(s):")
    if (country.upper() == 'ALL'):
        sql_query = "SELECT * FROM CountryLocation;"
    else:
        sql_query = f"SELECT * FROM CountryLocation WHERE country_name = '{country}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThere are zero locations in {country}\n")
    else:
        print('\n\n~~~~~~~~ Number of locations per country ~~~~~~~~')
        for record in query_result:
            print(
                f"{record[0]}: {record[1]} location(s)\n")
    return


# 9
def get_addDependent(mycursor):
    print("Add New Dependent")
    print("------------------------")

    firstName = input("Enter dependent's first name: ")
    lastName = input("Enter dependent's last name: ")
    relationship = input("Enter dependent's relationship to the employee: ")
    employeeID = input("Enter employee id that the dependent is related to: ")
    sql_query = f"INSERT INTO dependents(first_name,last_name,relationship,employee_id) VALUES ('{firstName}','{lastName}','{relationship}',{employeeID});"
    try:
        mycursor.execute(sql_query)
        if mycursor.rowcount == 0:
            print("\nFailure in records inserted in dependents")
        else:
            print(
                f"Success: You have added {firstName} {lastName} to the dependents table")
    except mysql.connector.Error as error:
        print(f"Failed to add {firstName} {lastName} to the dependents table")
    return


# 10
def get_AddAJob(mycursor):
    print("Add New Job")
    print("------------------------")

    jobTitle = input("Enter job title: ")
    minSalary = input("Enter minimum salary: ")
    maxSalary = input("Enter maximum salary: ")

    sql_query = f"INSERT INTO jobs(job_title,min_salary,max_salary) VALUES ('{jobTitle}',{minSalary},{maxSalary})"
    try:
        mycursor.execute(sql_query)
        if mycursor.rowcount == 0:
            print("\nFailure in records inserted in jobs")
        else:
            print(f"Success: You have added  to the jobs table")
    except mysql.connector.Error as error:
        print(f"Failed to add {jobTitle} to the job table")
    return


# 11
def get_DeleteEmployee(mycursor):
    print("Delete Employee")
    print("------------------------")

    employeeID = input("Enter the employee id: ")
    sql_query = f"DELETE FROM employees WHERE employee_id = {employeeID}"
    try:
        mycursor.execute(sql_query)
        print(
            f"Success: You have deleted employee id {employeeID} from the employees table.")
    except mysql.connector.Error as error:
        print(
            f"Failed to delete employee id {employeeID}, might me a manager.")
    return


# 12
def get_DeleteDependent(mycursor):
    print("Delete Department")
    print("------------------------")

    dependentID = input("Enter the dependent id that you want to delete: ")
    sql_query = f"DELETE FROM dependents WHERE dependent_id = {dependentID}"
    try:
        mycursor.execute(sql_query)
        print(
            f"Success: You have deleted dependent id {dependentID} from the dependents table.")
    except mysql.connector.Error as error:
        print(f"Failed to delete employee id {dependentID}")
    return


# 13
def get_UpdateEmployeeFirstName(mycursor):
    print("Update Employee First Name")
    print("------------------------")

    employeeID = input("Enter the employee's id: ")
    firstName = input("Enter the updated first name: ")
    sql_query = f"UPDATE employees SET first_name = '{firstName}' WHERE employee_id = {employeeID}"
    try:
        mycursor.execute(sql_query)
        print(
            f"Success: The first name of employee id {employeeID} has been changed to {firstName}")
    except mysql.connector.Error as error:
        print("Failed to change first name.")
    return


# 14
def get_UpdateEmployeeLastName(mycursor):
    print("Update Employee Last Name")
    print("------------------------")

    employeeID = input("Enter the employee's id: ")
    lastName = input("Enter the updated last name: ")
    sql_query = f"UPDATE employees SET last_name = '{lastName}' WHERE employee_id = {employeeID}"
    try:
        mycursor.execute(sql_query)
        print(
            f"Success: The last name of employee id {employeeID} has been changed to {lastName}")
    except mysql.connector.Error as error:
        print("Failed to change last name.")
    return


# 15
def get_UpdateMinSalary(mycursor):
    print("Update Minimum Salary")
    print("------------------------")

    jobID = input("Enter job id: ")
    minSalary = input("Enter the new minimum salary: ")
    sql_query = f"UPDATE jobs SET min_salary = {minSalary} WHERE job_id = {jobID}"
    try:
        mycursor.execute(sql_query)
        print("Success: The minimum salary has been changed.")
    except mysql.connector.Error as error:
        print("Failed to change minimum salary")
    return


# 16
def get_UpdateMaxSalary(mycursor):
    jobID = input("Enter job id: ")
    maxSalary = input("Enter the new maximum salary: ")
    sql_query = f"UPDATE jobs SET max_salary = {maxSalary} WHERE job_id = {jobID}"
    try:
        #execute query
        mycursor.execute(sql_query)
        print("Success: The maximum salary has been changed.")
    except mysql.connector.Error as error:
        print("Failed to change maximum salary")
    return


def main():
    # create a connector object
    try:
        mydb = mysql.connector.connect(
            host="mysql-container",
            user="root",
            passwd="root",
            database="project2"
        )
        print("Successfully connected to the database!")
    except Exception as err:
        print(f"Error Occured: {err}\nExiting program...")
        quit()

    # create database cursor
    mycursor = mydb.cursor()

    while (True):
        user_choice = get_user_choice()
        if (user_choice == 1):
            # call the function to query the managers
            get_EmployeesPerRegion(mycursor)
        elif (user_choice == 2):
            get_managers(mycursor)
        elif (user_choice == 3):
            get_DependentsByDepartment(mycursor)
        elif (user_choice == 4):
            get_HiresByYear(mycursor)
        elif (user_choice == 5):
            get_SalaryByDepartment(mycursor)
        elif (user_choice == 6):
            get_SalaryByJobTitle(mycursor)
        elif (user_choice == 7):
            get_EmployeeDependents(mycursor)
        elif (user_choice == 8):
            get_CountryLocation(mycursor)
        elif (user_choice == 9):
            get_addDependent(mycursor)
        elif (user_choice == 10):
            get_AddAJob(mycursor)
        elif (user_choice == 11):
            get_DeleteEmployee(mycursor)
        elif (user_choice == 12):
            get_DeleteDependent(mycursor)
        elif (user_choice == 13):
            get_UpdateEmployeeFirstName(mycursor)
        elif (user_choice == 14):
            get_UpdateEmployeeLastName(mycursor)
        elif (user_choice == 15):
            get_UpdateMinSalary(mycursor)
        elif (user_choice == 16):
            get_UpdateMaxSalary(mycursor)
        elif (user_choice == 17):
            print("Bye Bye!!!")
            break


main()
