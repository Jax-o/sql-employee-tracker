INSERT INTO department (dep_name)
VALUES ("Sales"),
		("Engineering"),
      ("Finance"),
      ("Legal");

INSERT INTO roles (title, salary, department_id)
VALUES ("Salesperson", 80000, 1),
      ("Lead salesperson", 90000, 1),
      ("Lead Engineer", 150000, 2),
      ("Software Engineer", 120000, 2),
      ("Account Manager", 160000, 3),
      ("Accountant", 125000, 3),
      ("Lead Lawyer", 250000, 4),
		("Lawyer", 180000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mike", "Chan", 1, 1),
      ("Ashley", "Rodriquez", 2, NULL),
      ("Kevin", "Tupik", 3, NULL),
      ("Kunal", "Singh", 4, 2),
      ("Malia", "Brown", 5, NULL),
      ("Sarah", "Lourd", 6, 3),
      ("Tom", "Allen", 7, NULL),
		("Barry", "Bonds", 8, 4);