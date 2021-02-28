---Foreign keys

ALTER TABLE mechanic_services
ADD FOREIGN KEY(mech_staff_id) REFERENCES mechanic(mech_staff_id);

ALTER TABLE mechanic_services
ADD FOREIGN KEY(service_id) REFERENCES services(service_id);

Alter TABLE sale
ADD FOREIGN KEY(serial_num) REFERENCES vehicle(serial_num);

ALTER TABLE invoice
ADD FOREIGN KEY (sale_id) REFERENCES sale(sale_id),
ADD FOREIGN KEY (sales_person_id) REFERENCES salesperson(sales_person_id),
ADD FOREIGN KEY (service_id) REFERENCES services(service_id),
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

ALTER TABLE services 
ADD FOREIGN KEY (part_id) REFERENCES parts(part_id);


