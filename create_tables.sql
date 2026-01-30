CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (name) VALUES ('Engineering'), ('HR');

INSERT INTO employees (name, department_id, salary) VALUES
('Ahmed', 1, 10000),
('Sara', 2, 7000),
('Omar', 1, 12000);
