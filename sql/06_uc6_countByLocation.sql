USE address_book_service;

-- Ability to understand the size of address book by City
SELECT city, COUNT(*) as city_count
FROM address_book
GROUP BY city;

-- Ability to understand the size of address book by State
SELECT state, COUNT(*) as state_count
FROM address_book
GROUP BY state;