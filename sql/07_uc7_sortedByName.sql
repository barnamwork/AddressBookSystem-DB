USE address_book_service;

-- Retrieve entries sorted alphabetically by Person's name for a given city
SELECT * FROM address_book
WHERE city = 'Mumbai'
ORDER BY first_name ASC;