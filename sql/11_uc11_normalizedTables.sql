USE address_book_service;

-- 1. Create Address Books Table
CREATE TABLE address_books (
                               ab_id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
                               ab_name VARCHAR(50) NOT NULL,
                               PRIMARY KEY (ab_id)
);

-- 2. Create Contacts Table (Core Attributes)
CREATE TABLE contacts (
                          contact_id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
                          ab_id        INT UNSIGNED NOT NULL,
                          first_name   VARCHAR(150) NOT NULL,
                          last_name    VARCHAR(150) NOT NULL,
                          address      VARCHAR(255) NOT NULL,
                          city         VARCHAR(100) NOT NULL,
                          state        VARCHAR(100) NOT NULL,
                          zip          VARCHAR(10) NOT NULL,
                          phone_number VARCHAR(15) NOT NULL,
                          email        VARCHAR(150) NOT NULL,
                          PRIMARY KEY (contact_id),
                          FOREIGN KEY (ab_id) REFERENCES address_books(ab_id)
);

-- 3. Create Types Table (Family, Friends, etc.)
CREATE TABLE contact_types (
                               type_id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
                               type_name VARCHAR(50) NOT NULL,
                               PRIMARY KEY (type_id)
);

-- 4. Create Mapping Table (Handles Multi-Valued Attributes) [cite: 65]
-- This allows one person to be both 'Friend' and 'Family' without duplicating rows [cite: 59, 61]
CREATE TABLE contact_type_mapping (
                                      contact_id INT UNSIGNED NOT NULL,
                                      type_id    INT UNSIGNED NOT NULL,
                                      PRIMARY KEY (contact_id, type_id),
                                      FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
                                      FOREIGN KEY (type_id) REFERENCES contact_types(type_id)
);