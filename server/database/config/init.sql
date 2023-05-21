
BEGIN;
-- This file is used to create the database and tables

DROP TABLE IF EXISTS  USERS CASCADE;
DROP TABLE IF EXISTS  PRODUCTS CASCADE;
DROP TABLE IF EXISTS  CART CASCADE;

CREATE TABLE USERS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE PRODUCTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INTEGER NOT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE CART (
    id SERIAL PRIMARY KEY,
    quantity INTEGER  NOT NULL DEFAULT 1,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES USERS (id),
    FOREIGN KEY (product_id) REFERENCES PRODUCTS (id)
);


COMMIT;

