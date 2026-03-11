USE address_book_service;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE contact_type_mapping;
TRUNCATE TABLE contacts;
TRUNCATE TABLE contact_types;
TRUNCATE TABLE address_books;
SET FOREIGN_KEY_CHECKS = 1;

-- Insert Address Books
INSERT INTO address_books (ab_name) VALUES ('Personal'), ('Work');

-- Insert Types
INSERT INTO contact_types (type_name) VALUES ('Friends'), ('Family'), ('Profession');

-- Insert Contacts (Aaditya is in AB 1, Barnam is in AB 1, John is in AB 2)
INSERT INTO contacts (ab_id, first_name, last_name, address, city, state, zip, phone_number, email) VALUES
                                                                                                        (1, 'Aaditya', 'Kumar', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '9876543210', 'aaditya@example.com'),
                                                                                                        (1, 'Barnam', 'Das', '456 New Park Ave', 'Bangalore', 'Karnataka', '560001', '8765432109', 'devraj@example.com'),
                                                                                                        (2, 'John', 'Doe', '789 Lake Rd', 'Mumbai', 'Maharashtra', '400002', '7654321098', 'john@example.com');

-- Map Aaditya to BOTH Friends (Type 1) and Family (Type 2) [UC 11 requirement]
INSERT INTO contact_type_mapping (contact_id, type_id) VALUES (1, 1), (1, 2), (2, 2), (3, 3);

USE address_book_service;

-- UC 6: Count by City/State (Still works same way)
SELECT city, COUNT(*) FROM contacts GROUP BY city;

-- UC 7: Sorted Alphabetically for Mumbai
SELECT * FROM contacts WHERE city = 'Mumbai' ORDER BY first_name ASC;

-- UC 10: Count by Type (Requires JOIN)
SELECT ct.type_name, COUNT(ctm.contact_id) as count_by_type
FROM contact_types ct
         LEFT JOIN contact_type_mapping ctm ON ct.type_id = ctm.type_id
GROUP BY ct.type_name;