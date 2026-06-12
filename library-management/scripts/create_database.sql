-- Library Management System Database Setup

-- Create Books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    publisher VARCHAR(255),
    publication_date DATE,
    category_id INT,
    quantity_total INT NOT NULL DEFAULT 1,
    quantity_available INT NOT NULL DEFAULT 1,
    price DECIMAL(8, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Members Table
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    membership_date DATE NOT NULL,
    membership_type ENUM('standard', 'premium', 'student') DEFAULT 'standard',
    status ENUM('active', 'inactive', 'suspended') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Categories Table
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Borrowing Records Table
CREATE TABLE borrowing_records (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    status ENUM('borrowed', 'returned', 'overdue') DEFAULT 'borrowed',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Create Fines Table
CREATE TABLE fines (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    borrow_id INT NOT NULL,
    member_id INT NOT NULL,
    fine_amount DECIMAL(8, 2) NOT NULL,
    fine_date DATE NOT NULL,
    payment_date DATE,
    status ENUM('unpaid', 'paid') DEFAULT 'unpaid',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (borrow_id) REFERENCES borrowing_records(borrow_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Create Indexes
CREATE INDEX idx_book_title ON books(title);
CREATE INDEX idx_member_email ON members(email);
CREATE INDEX idx_borrow_member ON borrowing_records(member_id);
CREATE INDEX idx_borrow_book ON borrowing_records(book_id);
CREATE INDEX idx_borrow_status ON borrowing_records(status);
