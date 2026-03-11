
USE address_book_service;

-- Retrieve Person belonging to a City from the Address Book
SELECT * FROM address_book
WHERE city = 'Mumbai';

-- Retrieve Person belonging to a State from the Address Book
SELECT * FROM address_book
WHERE state = 'Maharashtra';