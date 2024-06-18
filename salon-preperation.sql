-- Create database named 'salon'
CREATE DATABASE salon;

-- Connect to database
\c salon

-- Create tables
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	phone VARCHAR(15) UNIQUE,
	name VARCHAR(255)
);

CREATE TABLE appointments(
	appointment_id SERIAL PRIMARY KEY,
	time VARCHAR(255),
	customer_id INT,
	service_id INT
);

CREATE TABLE services(
	service_id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

-- Add foreign keys
ALTER TABLE appointments ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

ALTER TABLE appointments ADD FOREIGN KEY(service_id) REFERENCES services(service_id);

-- Add 3 rows of data to services table
INSERT INTO services(name) VALUES('Cut'), ('Wash and cut'), ('Wash, cut and dry');
