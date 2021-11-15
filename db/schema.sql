DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dep_name VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(30) NOT NULL,
	salary DECIMAL,
	department_id INT NOT NULL,
	FOREIGN KEY (department_id),
   REFERENCES department(id)
);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	role_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (role_id),
   REFERENCES roles(id),
	FOREIGN KEY (manager_id),
	REFERENCES employee(id),
);