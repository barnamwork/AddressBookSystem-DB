# Address Book System Database

A MySQL-based backend for an Address Book System. This project demonstrates the evolution of a database from a single "flat" table to a fully normalized structure using ER modeling and GitFlow methodology.

## 🛠 Project Overview
This project manages contact information including names, addresses, and categorization (e.g., Family, Friends, Profession). It was built following 13 Use Cases (UCs) to implement CRUD operations, data retrieval, and advanced normalization.

### Key Features
* **CRUD Operations**: Create, Read, Update, and Delete contacts.
* **Data Retrieval**: Filter by City/State, sort alphabetically, and count by location.
* **Advanced Normalization**: Refactored from one table into four related tables to eliminate data redundancy.
* **Relationship Mapping**: Support for many-to-many relationships (one person belonging to multiple categories).

## 📂 Project Structure
```text
AddressBookSystem-DB/
├── sql/               # SQL scripts for database setup and queries
│   ├── 99_reset_db.sql
│   ├── 01_uc1_schema.sql
│   ├── 02_uc2_insert_contacts.sql
│   └── 03_uc_queries.sql
├── proof/             # CSV exports of query results for each UC
├── docs/              # ER Diagrams and project documentation
└── .gitignore         # Prevents tracking of IDE and temporary files