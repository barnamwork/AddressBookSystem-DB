USE address_book_service;

-- Ability to add person to both Friend and Family
-- We insert the same person details but with a different 'type'
INSERT INTO address_book (ab_name, first_name, last_name, address, city, state, zip, phone_number, email, type)
VALUES
    ('Personal', 'Aaditya', 'Kumar', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '9876543210', 'aaditya@example.com', 'Family');

-- Verify the duplicate entry with different types
SELECT * FROM address_book WHERE first_name = 'Aaditya';