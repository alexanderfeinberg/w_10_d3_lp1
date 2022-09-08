-- Your code here
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffee_orders;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    phone   NUMERIC(10, 0),
    email VARCHAR(255) UNIQUE,
    points INTEGER NOT NULL DEFAULT 5,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN DEFAULT 0,
    ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO customers (name, phone)
VALUES("Rachel", 1111111111);

UPDATE customers SET points = points + 1 WHERE id =1;

SELECT points FROM customers WHERE id=1;
INSERT INTO coffee_orders (is_redeemed) VALUES('0');


INSERT INTO customers (name, email, phone)
VALUES("Monica","monica@friends.show",	2222222222);

INSERT INTO customers (name, email, phone)
VALUES("Phoebe", "phoebe@friends.show", 3333333333
);

INSERT INTO coffee_orders (is_redeemed) VALUES('0');
UPDATE customers SET points = points + 1 WHERE id =3;
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
UPDATE customers SET points = points + 1 WHERE id =3;
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
UPDATE customers SET points = points + 1 WHERE id =3;

INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
UPDATE customers SET points = points + 4 WHERE id =2;

INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
INSERT INTO coffee_orders (is_redeemed) VALUES('0');
UPDATE customers SET points = points + 4 WHERE id =3;

SELECT points FROM customers WHERE id=2;

SELECT points FROM customers WHERE id=3;
INSERT INTO coffee_orders (is_redeemed) VALUES('1');
UPDATE customers SET points = points-10 where id=3;

INSERT INTO customers (name, email)
VALUES("Joey","joey@friends.show");

INSERT INTO customers (name, email)
VALUES("Chandler", "chandler@friends.show"
);
INSERT INTO customers (name, email)
VALUES("PhRossoebe", "ross@friends.show"
);

INSERT INTO coffee_orders (is_redeemed) VALUES('0');

INSERT INTO coffee_orders (is_redeemed) VALUES('0');

INSERT INTO coffee_orders (is_redeemed) VALUES('0');

INSERT INTO coffee_orders (is_redeemed) VALUES('0');

INSERT INTO coffee_orders (is_redeemed) VALUES('0');

UPDATE customers SET points = points + 5 WHERE id =6;
INSERT INTO coffee_orders (is_redeemed) VALUES('1');
UPDATE customers SET points = points - 10 WHERE id=6;
