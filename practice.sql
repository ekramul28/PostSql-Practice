CREATE Table employees(
     employee_id SERIAL PRIMARY KEY,
     employee_name VARCHAR(50),
     department_id INT REFERENCES departments(department_id),
     salary DECIMAL(10,2),
     hire_date DATE
)

CREATE Table departments(
     department_id SERIAL PRIMARY KEY,
     department_name VARCHAR(50)
)

DROP Table departments

DROP Table employees

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Engineering'),
('Marketing'),
('Sales');


INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 55000.00, '2020-06-15'),
('Jane Smith', 2, 75000.00, '2019-03-10'),
('Michael Brown', 3, 92000.00, '2018-11-20'),
('Emily Davis', 4, 62000.00, '2021-02-25'),
('David Wilson', 5, 70000.00, '2022-08-30'),
('Sophia Johnson', 3, 98000.00, '2017-04-18'),
('Daniel Lee', 2, 60000.00, '2020-01-05'),
('Isabella Harris', 4, 64000.00, '2023-01-22');

SELECT * FROM employees

SELECT * FROM employees JOIN departments ON employees.department_id = departments.department_id; 
SELECT * FROM employees JOIN departments USING(department_id);
SELECT department_name,avg(salary) FROM employees JOIN departments USING(department_id) 
GROUP BY department_name