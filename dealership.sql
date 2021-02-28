CREATE TABLE mechanic (
	mech_staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)	 
);
CREATE TABLE mechanic_services (
	mech_services_id SERIAL PRIMARY KEY,
	mech_staff_id INTEGER,
	service_id INTEGER	
);
CREATE TABLE vehicle (
	serial_num SERIAL PRIMARY KEY,
	make VARCHAR(25),
	model VARCHAR(25),
	price NUMERIC(10,2),
	v_year INTEGER,
	used BOOLEAN,
	sold BOOLEAN
);

CREATE TABLE sale (
	sale_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2),
	loan_sale NUMERIC(20,2),
	serial_num INTEGER 	
);
	
CREATE TABLE parts (
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(25),
	price NUMERIC(4,2)
);	
CREATE TABLE salesPerson (
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)	 
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	phone VARCHAR(15)		 
);
	
CREATE TABLE invoice(
	invoice_id SERIAL PRiMARY KEY, 
	sales_person_id INTEGER,
	sale_id INTEGER,
	customer_id INTEGER,
	service_id INTEGER,
	invoice_date TIMESTAMP 
);
CREATE TABLE services(
	service_id SERIAL PRIMARY KEY,
	amount NUMERIC(4,2),
	task VARCHAR(25),
	part_id INTEGER
);
