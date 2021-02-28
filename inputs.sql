INSERT INTO customer(first_name, last_name, phone)
VALUES ('Claude', 'Monet', 551-111-1111);

INSERT INTO customer(first_name, last_name, phone)
VALUES ('Vincent', 'Price', 444-555-1111);

INSERT INTO salesperson(first_name, last_name)
VALUES ('John','Getty');

INSERT INTO salesperson(first_name, last_name)
VALUES ('Mary', 'Cassatt');

INSERT INTO vehicle(make, model, price, v_year, used, sold)
VALUES ('Honda', 'Accord', 20000.00, 2021, False, False);

INSERT INTO vehicle(make, model, price, v_year, used, sold)
VALUES ('Jeep', 'Cherokee', 21000.00, 2021, False, False);

INSERT INTO parts (part_name, price) 
VALUES ('spark_plugs', 49.00);

INSERT INTO parts (part_name, price)
VALUES ('Wheellocks', 69.00);

INSERT INTO services(amount, part_id)
VALUES (69.00, 1);

INSERT INTO services(amount, task)
VALUES (150.00, 'tuneup');

SELECT*
FROM parts;

SELECT *
FROM services;

INSERT INTO mechanic (first_name, last_name)
VALUES ('Fred', 'Banksy')

INSERT INTO mechanic (first_name, last_name)
VALUES ('Dorthea', 'Lange');

INSERT INTO mechanic_services 
VALUES (1, 1, 1);

INSERT INTO mechanic_services 
VALUES (2, 2, 2);

INSERT INTO sale(sale_id, amount, loan_sale, serial_num)
VALUES (1, 20000.00, 20000.00, 1);

INSERT INTO sale(sale_id, amount, loan_sale, serial_num)
VALUES (2, 21000.00, 21000.00, 2);

INSERT INTO invoice(sales_person_id, sale_id, customer_id, service_id)
VALUES (1, 1, 1, 1);

INSERT INTO invoice(sales_person_id, sale_id, customer_id, service_id)
VALUES (2, 2, 2, 2);

SELECT *
FROM invoice;

---to change vehicle to sold 

UPDATE vehicle
SET sold=True
WHERE serial_num = 1;

UPDATE vehicle
SET sold = True
WHERE serial_num = 2;









