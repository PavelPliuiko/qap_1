WITH new_address AS (
	INSERT INTO address (address,district, city_id, phone)
	VALUES ('123 Baker St.','NL', 12, '17098534545')
	RETURNING address_id
)
UPDATE customer
SET address_id = (SELECT address_id FROM new_address)
WHERE last_name = 'Pliuiko'