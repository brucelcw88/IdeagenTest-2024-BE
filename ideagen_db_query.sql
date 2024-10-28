-- create user
CREATE USER 'devUser'@'localhost' IDENTIFIED BY 'devUser';


-- create database
CREATE DATABASE vuetest;

USE vuetest;


-- drop table if exists
DROP TABLE sales_order;
DROP TABLE product_category;


-- create table
CREATE TABLE product_category
(object_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
is_active TINYINT DEFAULT 1,
created_date DATETIME,
updated_date DATETIME,
PRIMARY KEY (object_id));

CREATE TABLE sales_order
(object_id BIGINT NOT NULL AUTO_INCREMENT,
customer_name VARCHAR(128) NOT NULL,
status VARCHAR(15) NOT NULL,
category_id INT NOT NULL,
country VARCHAR(30),
created_date DATETIME,
updated_date DATETIME,
PRIMARY KEY (object_id),
FOREIGN KEY (category_id) REFERENCES product_category(object_id));


-- dummy data product_category
INSERT INTO product_category (name, created_date) VALUES 
('Electronics', '2019-01-01'),
('Furniture', '2019-01-01'),
('Stationery', current_timestamp),
('Sports', current_timestamp),
('Hardware', current_timestamp);


-- dummy data sales_order
INSERT INTO sales_order (customer_name, status, category_id, country, created_date)
VALUES 
('Kivell', 'Accepted', 1, ' United Kingdom', '2019-01-23'),
('Jardine', 'Processing', 2, ' Russia', '2019-02-09'),
('Gill', 'Rejected', 3, ' German', '2019-02-26'),
('Sor’vino', 'Open', 2, ' Singapore', '2019-03-15'),
('Jones', 'Rejected', 4, ' German', '2019-04-01'),
('Andrews', 'Processing', 1, ' Malaysia', '2019-04-18'),
('Jardine', 'Processing', 4, ' German', '2019-05-05'),
('Thompson', 'Accepted', 5, ' Malaysia', '2019-05-22'),
('Jones', 'Open', 2, ' Taiwan', '2019-06-08'),
('Morgan', 'Processing', 4, ' China', '2019-04-18');