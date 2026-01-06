# Create RDS instance 

# Connect to mysql workbench using the endpoint provided by AWS RDS console
# Username: admin
# Password: YourPassword123!

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

# Create instance with role read replica

# Interact with the RDS instance using mysql workbench or any SQL client
