# Create clustered RDS instance
# Username: admin
# Password: YourPassword123!

# Connect to mysql workbench using the endpoint provided by AWS RDS console


# Create a database named 'lab_db'
CREATE DATABASE lab_db;
USE lab_db;

# Create a table named 'employees' with columns 'id', 'name', and 'position'
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL
);

insert into employees (name, position) values ('John Doe', 'Software Engineer');
