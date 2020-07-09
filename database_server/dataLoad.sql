-- CREATE DATABASE e_commerce;

-- CREATE TABLE users
-- (
--     id SERIAL PRIMARY KEY,
--     firstname varchar(255),
--     lastname varchar(255),
--     email varchar(255)
-- );

-- INSERT INTO users
--     (firstname, lastname, email)
-- VALUES('Bob', 'Barker', 'bob@bob.com');


-- CREATE TABLE customers
-- (
--     id serial,
--     companyName varchar(255),
--     contactPerson varchar(255),
--     email varchar(255),
--     phoneNumber varchar(255)
-- );

-- INSERT INTO customers
--     (companyName, contactPerson, email, phoneNumber)
-- VALUES('United States', 'Bob Barker', 'bob@bob.com', '111-333-7777');

-- CREATE TABLE manufacturers
-- (
--     id SERIAL PRIMARY KEY,
--     companyName varchar(255),
--     contactPerson varchar(255),
--     email varchar(255),
--     phoneNumber varchar(255)
-- );

-- INSERT INTO manufacturers
--     (companyName, contactPerson, email, phoneNumber)
-- VALUES('China', 'Random Name', 'random@china.cz', '333-123-8643');

-- CREATE TABLE items
-- (
--     id SERIAL PRIMARY KEY,
--     name varchar(255),
--     description varchar(255)
-- );

-- INSERT INTO items
--     (name, description)
-- VALUES('Engine', 'This that make the car go vroom vroom');

-- CREATE TABLE purchase_order
-- (
--     id SERIAL PRIMARY KEY,
--     name varchar(255),
--     description varchar(255),
--     manufacturer INTEGER REFERENCES manufacturers(id),
--     item INTEGER REFERENCES items(id),
--     qty_ordered INTEGER,
--     date_ordered date,
--     date_recieved date
-- );

-- INSERT INTO purchase_order
--     (manufacturer, item, qty_ordered, date_ordered, date_recieved)
-- VALUES(1, 1, 1, '2002-10-11', '2003-10-11');

-- CREATE TABLE sales_order
-- (
--     id SERIAL PRIMARY KEY,
--     name varchar(255),
--     description varchar(255),
--     customer INTEGER REFERENCES manufacturers(id),
--     user_id INTEGER REFERENCES users(id),
--     item INTEGER REFERENCES items(id),
--     qty_ordered INTEGER,
--     date_ordered date,
--     date_recieved date
-- );

-- INSERT INTO sales_order
--     (customer, user_id, item, qty_ordered, date_ordered, date_recieved)
-- VALUES(1, 1, 1, 1, '2002-10-11', '2003-10-11');