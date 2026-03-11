USE address_book_service;

-- Truncate and Re-insert with new columns
TRUNCATE TABLE address_book;

INSERT INTO address_book (ab_name, first_name, last_name, address, city, state, zip, phone_number, email, type)
VALUES
    ('Personal', 'Aaditya', 'Kumar', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '9876543210', 'aaditya@example.com', 'Friends'),
    ('Personal', 'Barnam', 'Das', '456 New Park Ave', 'Bangalore', 'Karnataka', '560001', '8765432109', 'barnam@example.com', 'Family'),
    ('Work', 'John', 'Doe', '789 Lake Rd', 'Mumbai', 'Maharashtra', '400002', '7654321098', 'john@example.com', 'Profession');

-- Ability to get number of contact persons i.e. count by type [cite: 53, 55]
SELECT type, COUNT(*) as type_count
FROM address_book
GROUP BY type;