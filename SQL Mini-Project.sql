-- 1. Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- 2. Categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- 3. Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- 4. Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 5. OrderItems
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

select * from OrderItems
select * from Orders 
select * from Products
select * from Categories 
select * from Customers;

INSERT INTO Customers (CustomerID, Name, Email, City, Country) VALUES
(1, 'John Doe', 'john.doe@email.com', 'New York', 'USA'),
(2, 'Jane Smith', 'jane.smith@email.com', 'Los Angeles', 'USA'),
(3, 'Mike Johnson', 'mike.j@email.com', 'Chicago', 'USA'),
(4, 'Emily Davis', 'emily.d@email.com', 'Houston', 'USA'),
(5, 'Robert Brown', 'robert.b@email.com', 'Phoenix', 'USA'),
(6, 'Linda White', 'linda.w@email.com', 'Dallas', 'USA'),
(7, 'David Miller', 'david.m@email.com', 'Miami', 'USA'),
(8, 'Sarah Wilson', 'sarah.w@email.com', 'Seattle', 'USA'),
(9, 'Daniel Moore', 'daniel.m@email.com', 'Boston', 'USA'),
(10, 'Laura Taylor', 'laura.t@email.com', 'Denver', 'USA'),
(11, 'Kevin Anderson', 'kevin.a@email.com', 'San Jose', 'USA'),
(12, 'Megan Thomas', 'megan.t@email.com', 'Atlanta', 'USA'),
(13, 'Brian Jackson', 'brian.j@email.com', 'Orlando', 'USA'),
(14, 'Amy Martin', 'amy.m@email.com', 'Portland', 'USA'),
(15, 'Eric Lee', 'eric.l@email.com', 'Austin', 'USA'),
(16, 'Rachel Perez', 'rachel.p@email.com', 'Las Vegas', 'USA'),
(17, 'Justin Clark', 'justin.c@email.com', 'Sacramento', 'USA'),
(18, 'Olivia Lewis', 'olivia.l@email.com', 'Minneapolis', 'USA'),
(19, 'Andrew Hall', 'andrew.h@email.com', 'San Diego', 'USA'),
(20, 'Sophia Allen', 'sophia.a@email.com', 'Nashville', 'USA');


INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Books'),
(5, 'Sports');

INSERT INTO Products (ProductID, ProductName, CategoryID, Price) VALUES
(1, 'Laptop', 1, 1200),
(2, 'Smartphone', 1, 800),
(3, 'Headphones', 1, 150),
(4, 'T-shirt', 2, 25),
(5, 'Jeans', 2, 40),
(6, 'Jacket', 2, 70),
(7, 'Coffee Maker', 3, 90),
(8, 'Blender', 3, 60),
(9, 'Vacuum Cleaner', 3, 200),
(10, 'Novel', 4, 15),
(11, 'Cookbook', 4, 30),
(12, 'Notebook', 4, 10),
(13, 'Basketball', 5, 25),
(14, 'Yoga Mat', 5, 35),
(15, 'Treadmill', 5, 500),
(16, 'Tablet', 1, 400),
(17, 'Monitor', 1, 250),
(18, 'Sneakers', 2, 60),
(19, 'Mixer', 3, 75),
(20, 'Football', 5, 30);

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1, 1, '2026-01-01'),
(2, 2, '2026-01-03'),
(3, 3, '2026-01-05'),
(4, 4, '2026-01-06'),
(5, 5, '2026-01-07'),
(6, 6, '2026-01-10'),
(7, 7, '2026-01-12'),
(8, 8, '2026-01-13'),
(9, 9, '2026-01-15'),
(10, 10, '2026-01-17'),
(11, 11, '2026-01-18'),
(12, 12, '2026-01-20'),
(13, 13, '2026-01-21'),
(14, 14, '2026-01-23'),
(15, 15, '2026-01-24'),
(16, 16, '2026-01-25'),
(17, 17, '2026-01-27'),
(18, 18, '2026-01-28'),
(19, 19, '2026-01-29'),
(20, 20, '2026-01-30'),
(21, 1, '2026-02-01'),
(22, 3, '2026-02-02'),
(23, 5, '2026-02-03'),
(24, 7, '2026-02-05'),
(25, 9, '2026-02-06');


INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 2, 4, 3),
(5, 3, 5, 1),
(6, 3, 7, 2),
(7, 4, 6, 1),
(8, 4, 8, 1),
(9, 5, 9, 1),
(10, 5, 10, 2),
(11, 6, 11, 1),
(12, 6, 12, 2),
(13, 7, 13, 3),
(14, 7, 14, 1),
(15, 8, 15, 1),
(16, 8, 16, 1),
(17, 9, 17, 2),
(18, 9, 18, 1),
(19, 10, 19, 1),
(20, 10, 20, 2),
(21, 11, 1, 1),
(22, 12, 2, 2),
(23, 13, 3, 1),
(24, 14, 4, 2),
(25, 15, 5, 1),
(26, 16, 6, 2),
(27, 17, 7, 1),
(28, 18, 8, 1),
(29, 19, 9, 2),
(30, 20, 10, 1);


select * from OrderItems
select * from Orders 
select * from Products
select * from Categories 
select * from Customers;
