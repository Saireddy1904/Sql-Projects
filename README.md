# Library Management System SQL Project

## Overview

This project is a SQL-based Library Management System designed to manage books, members, and borrowing activities within a library. It demonstrates core SQL concepts including database creation, table relationships, data insertion, joins, filtering, aggregation, and reporting queries.

## Database Structure

### Books Table

Stores information about books available in the library.

**Columns:**

* BookID (Primary Key)
* Title
* Author
* Genre
* Published_Year
* CopiesAvailable

### Members Table

Stores library member details.

**Columns:**

* MemberID (Primary Key)
* Name
* Phone
* JoinDate

### BorrowRecords Table

Tracks book borrowing and return activities.

**Columns:**

* BorrowID (Primary Key)
* BookID (Foreign Key)
* MemberID (Foreign Key)
* BorrowDate
* ReturnDate

## Features

### Database Design

* Created relational database schema
* Implemented Primary Keys and Foreign Keys
* Maintained referential integrity between tables

### Data Management

* Inserted sample records for:

  * 50 Books
  * 30 Members
  * 100+ Borrow Records

### SQL Operations Performed

* Database Creation
* Table Creation
* Data Insertion
* Data Retrieval
* Filtering Records
* Sorting Results
* Aggregation Functions
* Joins

## Queries Implemented

### Basic Queries

* View all books
* View all members
* View all borrow records

### Filtering Queries

* Find books currently borrowed
* Find returned books
* Find overdue books
* Find books borrowed more than 14 days

### Join Queries

* Display member names with borrowed book details
* Display borrow and return dates with book information

### Aggregation Queries

* Count total borrowings per member
* Find most borrowed books
* Count books by genre
* Calculate average borrowing duration

### Reporting Queries

* Top borrowers
* Monthly borrowing trends
* Books never borrowed
* Members who never borrowed books

## SQL Concepts Covered

* CREATE DATABASE
* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* INSERT INTO
* SELECT
* WHERE
* ORDER BY
* GROUP BY
* COUNT()
* AVG()
* DATEDIFF()
* DATEADD()
* INNER JOIN
* LEFT JOIN
* Aggregate Functions

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Relational Database Design
* SQL Query Writing
* Data Analysis using SQL
* Table Relationships
* Real-world Database Scenarios
* Reporting and Business Insights

## Technologies Used

* SQL Server
* T-SQL
* GitHub

## Project Goal

The primary goal of this project is to strengthen SQL fundamentals by building a real-world Library Management System and performing practical database operations and reporting tasks.

---

⭐ If you found this project useful, feel free to star the repository.
#sql #sql-server # database-project #liberary-management-system # beginner-sql
