
-- Create the database


CREATE DATABASE address_book_service;
USE address_book_service;

-- Create the Address Book Table [cite: 16]
CREATE TABLE address_book (
                              id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
                              first_name  VARCHAR(150) NOT NULL,
                              last_name   VARCHAR(150) NOT NULL,
                              address     VARCHAR(255) NOT NULL,
                              city        VARCHAR(100) NOT NULL,
                              state       VARCHAR(100) NOT NULL,
                              zip         VARCHAR(10) NOT NULL,
                              phone_number VARCHAR(15) NOT NULL,
                              email       VARCHAR(150) NOT NULL,
                              PRIMARY KEY (id)
);

-- Display table structure to verify
DESCRIBE address_book;