--create database called Library Management System
create database Library Management System

--use database
use Library Management System

--Create Books Table

CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(2000),
    Author VARCHAR(2000),
    Genre VARCHAR(2000),
    Published_Year INT,
    CopiesAvailable INT
);

--create Members Table

CREATE TABLE Members (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Phone BIGINT,
    JoinDate DATE);

--create BorrowRecords Table

CREATE TABLE BorrowRecords (
    BorrowID INT IDENTITY(1,1) PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDATE DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
    );

SELECT * FROM Members

--insert the  values in books table

INSERT INTO Books (Title, Author, Genre, Published_Year, CopiesAvailable) VALUES
(N'The Great Gatsby 1', N'F. Scott Fitzgerald', N'Classic', 1925, 3),
(N'1984 2', N'George Orwell', N'Dystopian', 1949, 5),
(N'To Kill a Mockingbird 3', N'Harper Lee', N'Fiction', 1960, 2),
(N'Harry Potter and the Sorcerer''s Stone 4', N'J.K. Rowling', N'Fantasy', 1997, 4),
(N'The Hobbit 5', N'J.R.R. Tolkien', N'Adventure', 1937, 3),
(N'Pride and Prejudice 6', N'Jane Austen', N'Romance', 1813, 4),
(N'Moby Dick 7', N'Herman Melville', N'Adventure', 1851, 2),
(N'War and Peace 8', N'Leo Tolstoy', N'Drama', 1869, 5),
(N'The Catcher in the Rye 9', N'J.D. Salinger', N'Classic', 1951, 3),
(N'The Lord of the Rings 10', N'J.R.R. Tolkien', N'Fantasy', 1954, 6),
(N'The Alchemist 11', N'Paulo Coelho', N'Fiction', 1988, 4),
(N'Brave New World 12', N'Aldous Huxley', N'Dystopian', 1932, 5),
(N'Jane Eyre 13', N'Charlotte Bronte', N'Romance', 1847, 3),
(N'Animal Farm 14', N'George Orwell', N'Dystopian', 1945, 5),
(N'Wuthering Heights 15', N'Emily Bronte', N'Drama', 1847, 2),
(N'Hamlet 16', N'William Shakespeare', N'Drama', 1603, 4),
(N'Macbeth 17', N'William Shakespeare', N'Drama', 1606, 3),
(N'The Odyssey 18', N'Homer', N'Classic', -700, 4),
(N'Crime and Punishment 19', N'Fyodor Dostoevsky', N'Drama', 1866, 3),
(N'The Iliad 20', N'Homer', N'Classic', -750, 4),
(N'The Great Gatsby 21', N'F. Scott Fitzgerald', N'Classic', 1925, 2),
(N'1984 22', N'George Orwell', N'Dystopian', 1949, 4),
(N'To Kill a Mockingbird 23', N'Harper Lee', N'Fiction', 1960, 3),
(N'Harry Potter 24', N'J.K. Rowling', N'Fantasy', 1998, 5),
(N'The Hobbit 25', N'J.R.R. Tolkien', N'Adventure', 1937, 2),
(N'Pride and Prejudice 26', N'Jane Austen', N'Romance', 1813, 3),
(N'Moby Dick 27', N'Herman Melville', N'Adventure', 1851, 4),
(N'War and Peace 28', N'Leo Tolstoy', N'Drama', 1869, 2),
(N'The Catcher in the Rye 29', N'J.D. Salinger', N'Classic', 1951, 3),
(N'The Lord of the Rings 30', N'J.R.R. Tolkien', N'Fantasy', 1954, 5),
(N'The Alchemist 31', N'Paulo Coelho', N'Fiction', 1988, 3),
(N'Brave New World 32', N'Aldous Huxley', N'Dystopian', 1932, 4),
(N'Jane Eyre 33', N'Charlotte Bronte', N'Romance', 1847, 3),
(N'Animal Farm 34', N'George Orwell', N'Dystopian', 1945, 4),
(N'Wuthering Heights 35', N'Emily Bronte', N'Drama', 1847, 3),
(N'Hamlet 36', N'William Shakespeare', N'Drama', 1603, 2),
(N'Macbeth 37', N'William Shakespeare', N'Drama', 1606, 3),
(N'The Odyssey 38', N'Homer', N'Classic', -700, 4),
(N'Crime and Punishment 39', N'Fyodor Dostoevsky', N'Drama', 1866, 2),
(N'The Iliad 40', N'Homer', N'Classic', -750, 3),
(N'The Great Gatsby 41', N'F. Scott Fitzgerald', N'Classic', 1925, 4),
(N'1984 42', N'George Orwell', N'Dystopian', 1949, 3),
(N'To Kill a Mockingbird 43', N'Harper Lee', N'Fiction', 1960, 5),
(N'Harry Potter 44', N'J.K. Rowling', N'Fantasy', 1997, 4),
(N'The Hobbit 45', N'J.R.R. Tolkien', N'Adventure', 1937, 3),
(N'Pride and Prejudice 46', N'Jane Austen', N'Romance', 1813, 3),
(N'Moby Dick 47', N'Herman Melville', N'Adventure', 1851, 2),
(N'War and Peace 48', N'Leo Tolstoy', N'Drama', 1869, 3),
(N'The Catcher in the Rye 49', N'J.D. Salinger', N'Classic', 1951, 2),
(N'The Lord of the Rings 50', N'J.R.R. Tolkien', N'Fantasy', 1954, 5);

select * from Books

--insert the values in the Members table

INSERT INTO Members (Name, Phone, JoinDate) VALUES
(N'Alice Johnson','9876543210','2020-05-10'),
(N'Bob Smith','9876543211','2021-03-12'),
(N'Charlie Brown','9876543212','2020-07-15'),
(N'David Miller','9876543213','2021-08-20'),
(N'Emma Davis','9876543214','2022-01-18'),
(N'Fiona Wilson','9876543215','2021-06-22'),
(N'George Moore','9876543216','2022-03-11'),
(N'Hannah Taylor','9876543217','2023-02-05'),
(N'Ian Anderson','9876543218','2020-11-30'),
(N'Julia Thomas','9876543219','2021-09-12'),
(N'Kevin Brown','9876543220','2022-04-23'),
(N'Laura Smith','9876543221','2023-01-15'),
(N'Mike Johnson','9876543222','2020-12-08'),
(N'Nina Wilson','9876543223','2021-07-19'),
(N'Oliver Moore','9876543224','2022-05-09'),
(N'Paula Davis','9876543225','2023-06-20'),
(N'Quinn Taylor','9876543226','2021-03-27'),
(N'Rachel Anderson','9876543227','2022-07-13'),
(N'Sam Thomas','9876543228','2023-04-05'),
(N'Tina Brown','9876543229','2020-10-18'),
(N'Alice Wilson','9876543230','2021-05-11'),
(N'Bob Moore','9876543231','2022-06-22'),
(N'Charlie Smith','9876543232','2023-03-30'),
(N'David Johnson','9876543233','2020-09-15'),
(N'Emma Brown','9876543234','2021-08-18'),
(N'Fiona Anderson','9876543235','2022-11-22'),
(N'George Taylor','9876543236','2023-02-28'),
(N'Hannah Davis','9876543237','2020-06-07'),
(N'Ian Wilson','9876543238','2021-12-19'),
(N'Julia Moore','9876543239','2022-10-01');

-- Insert BorrowRecords (100 Records) in the BorrowRecords table

INSERT INTO BorrowRecords (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1,1,'2023-01-10','2023-01-20'),
(2,2,'2023-01-12','2023-01-25'),
(3,3,'2023-02-05','2023-02-18'),
(4,4,'2023-02-20','2023-03-05'),
(5,5,'2023-03-01','2023-03-15'),
(6,6,'2023-03-10','2023-03-25'),
(7,7,'2023-04-01','2023-04-12'),
(8,8,'2023-04-10','2023-04-20'),
(9,9,'2023-05-05','2023-05-18'),
(10,10,'2023-05-10','2023-05-22'),
(11,11,'2023-05-15','2023-05-28'),
(12,12,'2023-05-18',NULL),
(13,13,'2023-05-20','2023-06-01'),
(14,14,'2023-05-22',NULL),
(15,15,'2023-05-25','2023-06-05'),
(16,16,'2023-05-28','2023-06-08'),
(17,17,'2023-06-01',NULL),
(18,18,'2023-06-03','2023-06-15'),
(19,19,'2023-06-05',NULL),
(20,20,'2023-06-07','2023-06-20'),
(21,21,'2023-06-10','2023-06-22'),
(22,22,'2023-06-12',NULL),
(23,23,'2023-06-15','2023-06-28'),
(24,24,'2023-06-18',NULL),
(25,25,'2023-06-20','2023-07-02'),
(26,26,'2023-06-22','2023-07-05'),
(27,27,'2023-06-25',NULL),
(28,28,'2023-06-28','2023-07-10'),
(29,29,'2023-07-01',NULL),
(30,30,'2023-07-03','2023-07-15'),
(1,2,'2023-07-05','2023-07-18'),
(2,3,'2023-07-07',NULL),
(3,4,'2023-07-10','2023-07-22'),
(4,5,'2023-07-12',NULL),
(5,6,'2023-07-15','2023-07-28'),
(6,7,'2023-07-18','2023-07-30'),
(7,8,'2023-07-20',NULL),
(8,9,'2023-07-22','2023-08-05'),
(9,10,'2023-07-25',NULL),
(10,11,'2023-07-28','2023-08-10'),
(11,12,'2023-07-30','2023-08-12'),
(12,13,'2023-08-02',NULL),
(13,14,'2023-08-05','2023-08-18'),
(14,15,'2023-08-07',NULL),
(15,16,'2023-08-10','2023-08-22'),
(16,17,'2023-08-12','2023-08-25'),
(17,18,'2023-08-15',NULL),
(18,19,'2023-08-18','2023-08-30'),
(19,20,'2023-08-20',NULL),
(20,21,'2023-08-22','2023-09-05'),
(21,22,'2023-08-25','2023-09-08'),
(22,23,'2023-08-28',NULL),
(23,24,'2023-08-30','2023-09-12'),
(24,25,'2023-09-02',NULL),
(25,26,'2023-09-05','2023-09-18'),
(26,27,'2023-09-07','2023-09-20'),
(27,28,'2023-09-10',NULL),
(28,29,'2023-09-12','2023-09-25'),
(29,30,'2023-09-15',NULL),
(30,1,'2023-09-18','2023-10-01'),
(31,2,'2023-09-20','2023-10-03'),
(32,3,'2023-09-22',NULL),
(33,4,'2023-09-25','2023-10-08'),
(34,5,'2023-09-28',NULL),
(35,6,'2023-10-01','2023-10-15'),
(36,7,'2023-10-03','2023-10-18'),
(37,8,'2023-10-05',NULL),
(38,9,'2023-10-07','2023-10-20'),
(39,10,'2023-10-10',NULL),
(40,11,'2023-10-12','2023-10-25'),
(41,12,'2023-10-15','2023-10-28'),
(42,13,'2023-10-18',NULL),
(43,14,'2023-10-20','2023-11-02'),
(44,15,'2023-10-22',NULL),
(45,16,'2023-10-25','2023-11-08'),
(46,17,'2023-10-28','2023-11-10'),
(47,18,'2023-10-30',NULL),
(48,19,'2023-11-02','2023-11-15'),
(49,20,'2023-11-05',NULL),
(50,21,'2023-11-07','2023-11-20'),
(1,22,'2023-11-10','2023-11-23'),
(2,23,'2023-11-12',NULL),
(3,24,'2023-11-15','2023-11-28'),
(4,25,'2023-11-18',NULL),
(5,26,'2023-11-20','2023-12-03'),
(6,27,'2023-11-22','2023-12-05'),
(7,28,'2023-11-25',NULL),
(8,29,'2023-11-28','2023-12-10'),
(9,30,'2023-12-01',NULL),
(10,1,'2023-12-03','2023-12-15'),
(11,2,'2023-12-05','2023-12-18'),
(12,3,'2023-12-08',NULL),
(13,4,'2023-12-10','2023-12-23'),
(14,5,'2023-12-12',NULL),
(15,6,'2023-12-15','2023-12-28'),
(16,7,'2023-12-18','2023-12-31'),
(17,8,'2023-12-20',NULL),
(18,9,'2023-12-22','2024-01-04'),
(19,10,'2023-12-25',NULL),
(20,11,'2023-12-28','2024-01-10'),
(21,12,'2023-12-30','2024-01-12'),
(22,13,'2024-01-02',NULL),
(23,14,'2024-01-05','2024-01-18'),
(24,15,'2024-01-08',NULL),
(25,16,'2024-01-10','2024-01-23'),
(26,17,'2024-01-12','2024-01-25'),
(27,18,'2024-01-15',NULL),
(28,19,'2024-01-18','2024-01-31'),
(29,20,'2024-01-20',NULL),
(30,21,'2024-01-22','2024-02-05'),
(31,22,'2024-01-25','2024-02-08'),
(32,23,'2024-01-28',NULL),
(33,24,'2024-01-30','2024-02-12'),
(34,25,'2024-02-02',NULL),
(35,26,'2024-02-05','2024-02-18'),
(36,27,'2024-02-07','2024-02-20'),
(37,28,'2024-02-10',NULL),
(38,29,'2024-02-12','2024-02-25'),
(39,30,'2024-02-15',NULL),
(40,1,'2024-02-18','2024-03-02');

--Write a query to find all books that are currently borrowed and have not yet been returned.
select *
from BorrowRecords
where ReturnDATE is null;

--Write a SQL query to display all records where books have already been returned by the members.
select *
from BorrowRecords
where ReturnDATE is not null;

--Display all borrow records along with the member name and the title of the book they borrowed. Include the borrow and return dates in the result
SELECT br.BorrowID, m.Name AS MemberName, b.Title AS BookTitle, br.BorrowDate, br.ReturnDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID;

--Write a query to list all books that are currently borrowed, along with the member name and borrow date.
SELECT br.BorrowID, m.Name AS MemberName, b.Title AS BookTitle, br.BorrowDate, br.ReturnDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
where br.ReturnDATE is null;

--Find all books that have been borrowed for more than 14 days and have not been returned yet.
--Display the Borrow ID, Member Name, Book Title, Borrow Date, and Return Date.
SELECT br.BorrowID, m.Name AS MemberName, b.Title AS BookTitle, br.BorrowDate, br.ReturnDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
where br.ReturnDATE is null
AND br.BorrowDate<DATEADD(Day,-14,GETDATE());

--Write a SQL query to display all books that were borrowed more than 14 days ago but have already been returned.
SELECT br.BorrowID, b.Title AS BookTitle
from BorrowRecords br
JOIN Members m on br.MemberID=m.MemberID
JOIN Books b ON br.BookID=b.BookID
where br.ReturnDATE is not null
AND br.BorrowDate<DATEADD(Day, -14 ,GETDATE());

--Write a SQL query to find how many times each member has borrowed books from the library.
--Display the member name and the total number of times they borrowed, sorted by the highest borrower first.
select
    m.Name AS MemberName,
    COUNT(br.BorrowID)AS TimesBorrowed
From BorrowRecords br
JOIN Members m on br.MemberID=m.MemberID
Group BY m.Name
Order BY TimesBorrowed DESC;

