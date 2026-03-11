USE address_book_service;

-- Update address for a person using their name [cite: 21, 23]
UPDATE address_book
SET address = '456 New Park Ave', city = 'New Bangalore'
WHERE first_name = 'Barnam' AND last_name = 'Das';

-- View the updated record to verify
SELECT * FROM address_book WHERE first_name = 'Barnam';