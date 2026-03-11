USE address_book_service;

-- Insert initial contacts [cite: 18]
INSERT INTO address_book (first_name, last_name, address, city, state, zip, phone_number, email)
VALUES
    ('Pranav', 'Sinha', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '9876543210', 'aaditya@example.com'),
    ('Barnam', 'Das', '456 Park Ave', 'Bangalore', 'Karnataka', '560001', '8765432109', 'devraj@example.com'),
    ('John', 'Doe', '789 Lake Rd', 'Mumbai', 'Maharashtra', '400002', '7654321098', 'john@example.com');

-- View all contacts to verify insertion
SELECT * FROM address_book;