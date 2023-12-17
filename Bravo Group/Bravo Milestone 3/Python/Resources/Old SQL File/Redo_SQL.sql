DROP DATABASE IF EXISTS OutlandAdventures
CREATE DATABASE OutlandAdventures;

USE OutlandAdventures;
-- drop database user if exists
DROP USER IF EXISTS 'OutlandAdventures_user'@'localhost';

-- create movies_user and grant them all privileges to the movies database
CREATE USER 'OutlandAdventures_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Explore';

-- grant all privileges to the movies database to user movies_user on localhost
GRANT ALL PRIVILEGES ON OutlandAdventures.* TO 'OutlandAdventures_user'@'localhost';

-- Drop tables if they exist
DROP TABLE IF EXISTS Registration;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Trip;
DROP TABLE IF EXISTS Guide;
DROP TABLE IF EXISTS Airfare;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Destination;

DROP TABLE IF EXISTS Marketing;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Product;

-- Destination table
CREATE TABLE Destination (
    destination_id INT AUTO_INCREMENT NOT NULL,
    destination_name VARCHAR(64) NOT NULL,
    destination_description VARCHAR(64),
    PRIMARY KEY (destination_id)
);

-- Guide table
CREATE TABLE Guide (
    guide_id INT AUTO_INCREMENT NOT NULL,
    guide_name VARCHAR(64) NOT NULL,
    specialization VARCHAR(64) NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY (guide_id)
);

-- Airfare table
CREATE TABLE Airfare (
    airfare_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT UNIQUE NOT NULL,
    PRIMARY KEY (airfare_id)
);

-- Trip table
CREATE TABLE Trip (
    trip_id INT AUTO_INCREMENT NOT NULL,
    trip_name VARCHAR(64) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    destination_id INT NOT NULL,
    guide_id INT NOT NULL,
    airfare_id INT UNIQUE,
    equipment_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY(trip_id)
);

-- Registration table
CREATE TABLE Registration (
    registration_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY(registration_id)
);
-- Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT NOT NULL,
    customer_fname VARCHAR(64) NOT NULL,
    customer_lname VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
    PRIMARY KEY(customer_id)
);

-- Employee table
CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT NOT NULL,
    employee_fname VARCHAR(64) NOT NULL,
    employee_lname VARCHAR(64) NOT NULL,
    employee_nickname VARCHAR(64),
    position VARCHAR(64) NOT NULL,
    equipment_id INT UNIQUE,
    product_id INT UNIQUE,
    marketing_id INT UNIQUE,
    PRIMARY KEY(employee_id)

);

-- Marketing table
CREATE TABLE Marketing (
    marketing_id INT AUTO_INCREMENT NOT NULL,
    strategy VARCHAR(64) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(marketing_id)
);

-- Equipment table
CREATE TABLE Equipment (
    equipment_id INT AUTO_INCREMENT NOT NULL,
    equipment_name VARCHAR(64) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(equipment_id)
);

-- Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(product_id)
);

ALTER TABLE Guide ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);
ALTER TABLE Employee ADD FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id);
ALTER TABLE Employee ADD FOREIGN KEY (product_id) REFERENCES Product(product_id);
ALTER TABLE Employee ADD FOREIGN KEY (marketing_id) REFERENCES Marketing(marketing_id);
ALTER TABLE Registration ADD FOREIGN KEY (trip_id) REFERENCES Trip(trip_id);
ALTER TABLE Registration ADD FOREIGN KEY (customer_id) REFERENCES Customer(customer_id);
ALTER TABLE Trip ADD FOREIGN KEY (destination_id) REFERENCES Destination(destination_id);
ALTER TABLE Trip ADD FOREIGN KEY (guide_id) REFERENCES Guide(guide_id);
ALTER TABLE Trip ADD FOREIGN KEY (airfare_id) REFERENCES Airfare(airfare_id);
ALTER TABLE Trip ADD FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id);
ALTER TABLE Trip ADD FOREIGN KEY (product_id) REFERENCES Product(product_id);
ALTER TABLE Airfare ADD FOREIGN KEY (trip_id) REFERENCES Trip(trip_id);


SELECT * FROM Employee