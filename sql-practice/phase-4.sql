-- Your code here
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS party;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName VARCHAR NOT NULL,
    lastName VARCHAR NOT NULL,
    department VARCHAR NOT NULL,
    role VARCHAR NOT NULL,
    score NUMERIC(2,1),
    relationship VARCHAR
);

CREATE TABLE party (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget NUMERIC,
    onsite BOOLEAN
);
-- 1-7
INSERT INTO employees (firstName, lastName, department, role)
Values
("Michael", "Scott", "Manager", "Regional"),
("Dwight", "Schrute", "Sales", "Assistant Regional Manager"),
("Jim", "Halpert", "Sales", "Sales Representative"),
("Pam", "Beesly", "Reception", "Receiptionist"),
("Kelly", "Kapoor", "Product Oversight", "Product Oversight"),
("Angela", "Martin", "Accounting", "Head of Accounting"),
("Roy", "Anderson", "Warehouse", "Warehouse Staff");

-- 8
UPDATE employees SET relationship = "Pam Beesly" WHERE firstName = "Roy";
UPDATE employees SET relationship = "Roy Anderson" WHERE firstName = "Pam";

-- 9
INSERT INTO employees (firstName, lastName, department, role)
VALUES ("Ryan", "Howard", "Reciption", "Temp");

-- 10
INSERT INTO party (budget, onsite)
VALUES ("$100.00", true);

-- 11-14
UPDATE employees SET score = 3.3 WHERE firstName = "Dwight";
UPDATE employees SET score = 4.2 WHERE firstName = "Jim";
UPDATE employees SET score = 9.0 WHERE firstName = "Dwight";
UPDATE employees SET score = 9.3 WHERE firstName = "Jim";

-- 15
UPDATE employees SET role = "Assistant Regional Manager" WHERE firstName = "Jim";

--16
UPDATE employees
SET (department, role) = ("Sales", "Sales Representative")
WHERE firstName = "Ryan";

--17
INSERT INTO party (budget, onsite)
VALUEs ("$200.00", true);

--18
UPDATE employees SET relationship = "Dwight Schrute" WHERE firstName = "Angela";
UPDATE employees SET relationship = "Angela Martin" WHERE firstName = "Dwight";

--19
UPDATE employees SET score = 6.2 WHERE firstName = "Angela";

--20
UPDATE employees SET relationship = "Kelly Kapoor" WHERE firstName = "Ryan";
UPDATE employees SET relationship = "Ryan Howard" WHERE firstName = "Kelly";

--21
INSERT INTO party (budget, onsite)
VALUES ("$50.00", true);

--22
DELETE FROM employees WHERE firstName = "Jim";

--23
UPDATE employees SET relationship = null WHERE firstName = "Roy";
UPDATE employees SET relationship = null WHERE firstName = "Pam";

--24-25
UPDATE employees SET score = 7.6 WHERE firstName = "Pam";
UPDATE employees SET score = 8.7 WHERE firstName = "Dwight";

--26
DELETE FROM employees WHERE firstName = "Ryan";

--27
INSERT INTO employees (firstName, lastName, department, role)
VALUES ("Jim", "Halpert", "Sales", "Sales Representative");

--28
INSERT INTO employees (firstName, lastName, department, role)
VALUES ("Karen", "Filippelli", "Sales", "Sales Representative");

--29
UPDATE employees SET relationship = "Jim Halpert" WHERE firstName = "Karen";
UPDATE employees SET relationship = "Karen Filippeli" WHERE firstName = "Jim";

--30
INSERT INTO party (budget, onsite)
VALUES ("$120.00", true);

--31
UPDATE party SET (budget, onsite) = ("$300", false) WHERE budget = "$120.00" AND onsite = true;

--32
UPDATE employees SET relationship = null WHERE firstName = "Karen";
UPDATE employees SET relationship = null WHERE firstName = "Jim";

--33
UPDATE employees SET relationship = "Jim Halpert" WHERE firstName = "Pam";
UPDATE employees SET relationship = "Pam Beesly" WHERE firstName = "Jim";
