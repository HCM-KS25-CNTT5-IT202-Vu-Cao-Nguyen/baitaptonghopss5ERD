CREATE DATABASE baitaptonghop_db;
USE baitaptonghop_db;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;


CREATE TABLE Customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    phone VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    
    CONSTRAINT cs_phone CHECK (phone LIKE "0%" OR phone LIKE "+84%"),
    CONSTRAINT cs_email CHECK (email LIKE "%@gmail%" AND email LIKE "%.com")
);

CREATE TABLE Orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    total_amount DECIMAL(12) NOT NULL CHECK (total_amount >= 0),
    quantity INT NOT NULL CHECK (quantity >= 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20),
    id INT,
    FOREIGN KEY (id) references Customers (id)
);

INSERT INTO Customers (fullname, phone, email) VALUES
('Nguyen Van A', '0912345678', 'vana@gmail.com'),
('Tran Thi B', '0987654321', 'thib@gmail.com'),
('Le Van C', '+84901234567', 'vanc@gmail.com'),
('Pham Thi D', '0934567890', 'thid@gmail.com'),
('Hoang Van E', '0978123456', 'vane@gmail.com'),
('Vo Thi F', '+84987654321', 'thif@gmail.com'),
('Dang Van G', '0901234567', 'vang@gmail.com'),
('Bui Thi H', '0945678123', 'thih@gmail.com'),
('Do Van I', '+84934567890', 'vani@gmail.com'),
('Nguyen Thi K', '0967890123', 'thik@gmail.com');

INSERT INTO Orders (total_amount, quantity, status, id) VALUES
(150000, 1, 'pending', 1),
(300000, 2, 'completed', 2),
(450000, 3, 'shipped', 3),
(200000, 1, 'cancelled', 4),
(500000, 5, 'completed', 5),
(120000, 1, 'pending', 6),
(800000, 4, 'shipped', 7),
(220000, 2, 'completed', 8),
(330000, 3, 'pending', 9),
(410000, 2, 'completed', 10),

(250000, 2, 'shipped', 1),
(600000, 6, 'completed', 2),
(175000, 1, 'pending', 3),
(720000, 4, 'completed', 4),
(910000, 5, 'shipped', 5),
(110000, 1, 'pending', 6),
(470000, 3, 'completed', 7),
(520000, 2, 'cancelled', 8),
(610000, 4, 'completed', 9),
(130000, 1, 'pending', 10),

(340000, 2, 'completed', 1),
(560000, 3, 'shipped', 2),
(780000, 5, 'completed', 3),
(190000, 1, 'pending', 4),
(820000, 4, 'completed', 5),
(230000, 2, 'cancelled', 6),
(360000, 3, 'completed', 7),
(440000, 2, 'pending', 8),
(580000, 4, 'shipped', 9),
(670000, 5, 'completed', 10),

(290000, 2, 'pending', 1),
(310000, 3, 'completed', 2),
(470000, 4, 'shipped', 3),
(530000, 2, 'completed', 4),
(620000, 3, 'pending', 5),
(710000, 5, 'completed', 6),
(840000, 4, 'shipped', 7),
(910000, 6, 'completed', 8),
(150000, 1, 'cancelled', 9),
(260000, 2, 'pending', 10),

(370000, 3, 'completed', 1),
(480000, 2, 'shipped', 2),
(590000, 4, 'completed', 3),
(610000, 5, 'pending', 4),
(720000, 3, 'completed', 5),
(830000, 6, 'shipped', 6),
(940000, 7, 'completed', 7),
(210000, 2, 'pending', 8),
(320000, 3, 'completed', 9),
(430000, 4, 'shipped', 10);

