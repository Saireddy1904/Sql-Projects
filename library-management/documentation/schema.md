# Library Management Database Schema

## Overview
This document describes the database schema for the Library Management System.

## Tables

### books
Stores information about all books in the library.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| book_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique book identifier |
| title | VARCHAR(255) | NOT NULL | Book title |
| author | VARCHAR(255) | NOT NULL | Author name |
| isbn | VARCHAR(13) | UNIQUE | ISBN code |
| publisher | VARCHAR(255) | | Publisher name |
| publication_date | DATE | | Publication date |
| category_id | INT | | Reference to categories |
| quantity_total | INT | NOT NULL, DEFAULT 1 | Total copies in library |
| quantity_available | INT | NOT NULL, DEFAULT 1 | Available copies |
| price | DECIMAL(8,2) | | Book price |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |
| updated_at | TIMESTAMP | AUTO-UPDATE | Last update time |

### members
Stores information about library members.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| member_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique member identifier |
| first_name | VARCHAR(100) | NOT NULL | Member's first name |
| last_name | VARCHAR(100) | NOT NULL | Member's last name |
| email | VARCHAR(100) | UNIQUE | Email address |
| phone | VARCHAR(15) | | Phone number |
| address | VARCHAR(255) | | Street address |
| city | VARCHAR(100) | | City |
| state | VARCHAR(50) | | State/Province |
| postal_code | VARCHAR(10) | | Postal code |
| membership_date | DATE | NOT NULL | Date joined library |
| membership_type | ENUM | DEFAULT 'standard' | Type: standard, premium, student |
| status | ENUM | DEFAULT 'active' | Status: active, inactive, suspended |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |
| updated_at | TIMESTAMP | AUTO-UPDATE | Last update time |

### categories
Stores book categories and genres.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| category_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique category identifier |
| category_name | VARCHAR(100) | NOT NULL | Category name |
| description | TEXT | | Category description |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |

### borrowing_records
Tracks book borrowing transactions.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| borrow_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique borrow record ID |
| member_id | INT | FOREIGN KEY | Reference to members |
| book_id | INT | FOREIGN KEY | Reference to books |
| borrow_date | DATE | NOT NULL | Date book was borrowed |
| due_date | DATE | NOT NULL | Expected return date |
| return_date | DATE | | Actual return date |
| status | ENUM | DEFAULT 'borrowed' | Status: borrowed, returned, overdue |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |
| updated_at | TIMESTAMP | AUTO-UPDATE | Last update time |

### fines
Tracks overdue fines.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| fine_id | INT | PRIMARY KEY, AUTO_INCREMENT | Unique fine identifier |
| borrow_id | INT | FOREIGN KEY | Reference to borrowing record |
| member_id | INT | FOREIGN KEY | Reference to member |
| fine_amount | DECIMAL(8,2) | NOT NULL | Fine amount |
| fine_date | DATE | NOT NULL | Date fine was issued |
| payment_date | DATE | | Date fine was paid |
| status | ENUM | DEFAULT 'unpaid' | Status: unpaid, paid |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |

## Relationships

```
categories (1) ─── (M) books
members (1) ─── (M) borrowing_records
books (1) ─── (M) borrowing_records
borrowing_records (1) ─── (M) fines
members (1) ─── (M) fines
```

## Indexes

- `idx_book_title` on books(title)
- `idx_member_email` on members(email)
- `idx_borrow_member` on borrowing_records(member_id)
- `idx_borrow_book` on borrowing_records(book_id)
- `idx_borrow_status` on borrowing_records(status)
