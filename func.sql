----function1

CREATE FUNCTION add_invoice(_invoice_id INTEGER, _sales_person_id INTEGER, _sale_id INTEGER, _invoice_date TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $$
BEGIN
	INSERT INTO invoice(_invoice_id, _sales_person_id, _sale_id, _invoice_date, last_update)
	VALUES(_invoice_id, _sales_person_id, _sale_id, _invoice_date, _last_update);
END;
$$
LANGUAGE plpgsql;

--call
SELECT add_invoice(3, 3, 3, NOW()::timestamp);

SELECT invoice
FROM add_invoice
WHERE invoice_id = 3;

CREATE FUNCTION add_vehicle(_serial_num INTEGER, _make VARCHAR, _model VARCHAR, _price NUMERIC(10,2), _v_year INTEGER, _used BOOLEAN, _sold BOOLEAN)
RETURNS VOID
AS $$
BEGIN
	INSERT INTO vehicle(_serial_num, _make, _model, _price, _v_year, _used, _sold, _last_updated)
	VALUES (_serial_num, _make, _model, _price, _v_year, _used, _sold, _last_updated);
END; 
$$
LANGUAGE plpgsql;

-----function 2

SELECT add_vehicle(3, 'subaru', 'outback', 2021, 30000.00, 'no', 'no', NOW()::timestamp);
