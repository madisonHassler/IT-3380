# query ClassicModels database - Example
import mysql.connector


def print_menu():
    print("Choose an option")
    print("1. View number of employees per region")
    print("2. View order totals by month")
    print("3. View departmnet with largest number of departments")
    print("4. View number of mployees per year")
    print("5. View total salary per department")
    print("6. View otal salary per job title")
    print("7. View employees with dependents")
    print("8. View number of locations per country")
    print("9. Exit Application")
    return


def get_user_choice():
    print_menu()
    choice = 0
    while True:
        try:
            choice = int(input("Enter an integer 1-9: "))
        except ValueError:
            print("Please enter a valid integer 1-9")
            continue
        if choice >= 1 and choice <= 9:
            print(f'You entered: {choice}')
            break
        else:
            print('The integer must be in the range 1-9')
    return choice

# 1
def get_EmployeesPerRegion(mycursor):
    region = input("Enter region would would like to view (hit enter for all regions):")
    if (region == ""):
        sql_query = "SELECT * FROM EmployeesPerRegion;"
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
            print(
                f"region_name: {record[0]}, Number of Employees: {record[1]}\n")
    return


# 2
def get_managers(mycursor):
    sql_query = "SELECT department_name, COUNT(first_name) AS 'Number of Managers' FROM managers GROUP BY department_name ORDER BY COUNT(first_name) DESC;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    print('\n\n~~~~~~~~ Number of Employees Per Region ~~~~~~~~')
    for record in query_result:
        print(
            f"department_name: {record[0]}, Number of Managers: {record[1]}\n")
    return

# 3
def get_DependentsByDepartment(mycursor):
    sql_query = "SELECT * FROM DependentsByDepartment ORDER BY NumberOfDependents DESC LIMIT 2;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    print('\n\n~~~~~~~~ Departmnet with largest number of departments ~~~~~~~~')
    for record in query_result:
        print(
            f"department_name: {record[0]}, NumberofDepartments: {record[1]}\n")
    return


# 4
def get_HiresByYear(mycursor):
    year = input("Enter a year you would like to view (hit enter for all years):")
    if (year == ""):
        sql_query = "SELECT *FROM HiresByYear"
    else:
        sql_query = f"SELECT * FROM HiresByYear WHERE Year ='{year}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThere are no employees in {year}\n")
    else:
        print('\n\n~~~~~~~~ Number of Employees Per Year ~~~~~~~~')
        for record in query_result:
            print(
                f"Year: {record[0]}, Employees Hired: {record[1]}\n")
    return


# 5
def get_SalaryByDepartment(mycursor):
    department = input("Enter a department you would like to view (hit enter for all years):")
    if (department == ""):
        sql_query = "SELECT * FROM SalaryByDepartment"
    else:
        sql_query = f"SELECT * FROM SalaryByDepartment WHERE department_name = '{department}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThe {department} department is not a valid entry\n")
    else:
        print('\n\n~~~~~~~~ Total salary per department ~~~~~~~~')
        for record in query_result:
            print(
                f"Department Name: {record[0]}, Total Salary: {record[1]}\n")
    return


#6
def get_SalaryByJobTitle(mycursor):
    department = input("Enter 1 to view the job title with the highest total salary (or hit enter to view all total salaries):")
    if (department == "1"):
        sql_query = " SELECT * FROM SalaryByJobTitle ORDER BY TotalSalary DESC LIMIT 1;"
    else:
        sql_query = f"SELECT * FROM SalaryByJobTitle ORDER BY TotalSalary DESC;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThe {department} department is not a valid entry\n")
    else:
        print('\n\n~~~~~~~~ Total salary per job title ~~~~~~~~')
        for record in query_result:
            print(
                f"job Title: {record[0]}, Total Salary: {record[1]}\n")
    return


# 7
def get_EmployeeDependents(mycursor):
    dependents = input("Enter 1 to view employees with no childeren (or hit enter to view all employees):")
    if (dependents == "1"):
        sql_query = "SELECT * FROM EmployeeDependents WHERE numberOfDependents = 0;"
    else:
        sql_query = f"SELECT * FROM EmployeeDependents;"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThe {dependents} is not a valid entry\n")
    else:
        print('\n\n~~~~~~~~ Eployees dependents ~~~~~~~~')
        for record in query_result:
            print(
                f"Name: {record[0]} {record[1]}, Email: {record[2]}, Phone Number: {record[3]}, Nunmber of Dependents: {record[4]}\n")
    return


# 8
def get_CountryLocation(mycursor):
    number = input("Enter the number of locations per country you wish do find (hit enter for count of all locations per country):")
    if (number == ""):
        sql_query = "SELECT * FROM CountryLocation;"
    else:
        sql_query = f"SELECT * FROM CountryLocation WHERE NumberOfLocations = '{number}';"
    mycursor.execute(sql_query)
    query_result = mycursor.fetchall()
    row_count = len(query_result)
    if row_count == 0:
        print(f"\nThere are zero countries with {number} locations\n")
    else:
        print('\n\n~~~~~~~~ Number of locations per country ~~~~~~~~')
        for record in query_result:
            print(
                f"Country Name: {record[0]}, Number of Locations: {record[1]}\n")
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
            print("Bye Bye!!!")
            break


main()
