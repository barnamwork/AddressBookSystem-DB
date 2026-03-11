USE address_book_service;

-- Alter Address Book to add address book name and type
ALTER TABLE address_book
    ADD COLUMN ab_name VARCHAR(50) AFTER id,
    ADD COLUMN type VARCHAR(50) AFTER email;

-- View table structure to verify new columns
DESCRIBE address_book;