-- Create Departments Table
CREATE TABLE "departments"(dept_no VARCHAR(25) PRIMARY KEY,
						  dept_name VARCHAR (40) FOREIGN KEY
						  );

-- Create "dept_emp" table
CREATE TABLE dept_emp(emp_no VARCHAR(25) PRIMARY KEY,
					 dept_no VARCHAR(25) FOREIGN KEY					 
					 );

-- Create "dept_manager" table 
CREATE TABLE  dept_manager(dept_no VARCHAR (25) PRIMARY KEY,
						  emp_no VARCHAR(25) FOREIGN KEY
						  );

-- Create "employees" table 
CREATE TABLE  employees (emp_no VARCHAR (25) PRIMARY KEY,
						  emp_title VARCHAR(25),
						 birth_date VARCHAR (25),
						 first_name VARCHAR (25),
						 last_name VARCHAR (25),
						 sex VARCHAR (25),
						 hire_date VARCHAR (25)
						  );

-- Create "salaries" table
CREATE TABLE salaries (emp_no VARCHAR(25) PRIMARY KEY,
					 salary VARCHAR(25)					 
					 );

-- Create "titles" table
CREATE TABLE titles (title_id VARCHAR(25)PRIMARY KEY,
					 title VARCHAR(25)					 
					 );

