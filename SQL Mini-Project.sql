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



----List all customers with their city and country

SELECT Name, City, Country
FROM Customers;  

-----Show all products along with their category names
    
SELECT p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID;


----Display all orders with customer names and order dates

SELECT o.OrderID, c.Name, o.OrderDate--
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;


----Find the total number of orders placed---

SELECT COUNT(*) AS TotalOrders
FROM Orders;


----List all order items with product name and quantity ---

SELECT oi.OrderItemID, p.ProductName, oi.Quantity
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID;

-----Calculate total revenue----

SELECT SUM(p.Price * oi.Quantity) AS TotalRevenue
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID; 

------Find total revenue for each product---

SELECT p.ProductName, SUM(p.Price * oi.Quantity) AS Revenue
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC;

-----Find total revenue by category----

SELECT c.CategoryName, SUM(p.Price * oi.Quantity) AS Revenue
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC;

----Top 5 customers based on total spending

SELECT TOP 5 c.Name, SUM(p.Price * oi.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY c.Name
ORDER BY TotalSpent DESC;

-----Most sold product (by quantity)

SELECT TOP 1 p.ProductName, SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID 
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

-------------Least sold product 


SELECT top 1 p.ProductName, SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold ASC;

---Average order value 

SELECT AVG(OrderTotal) AS AvgOrderValue
FROM (
    SELECT o.OrderID, SUM(p.Price * oi.Quantity) AS OrderTotal
    FROM Orders o
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    JOIN Products p ON oi.ProductID = p.ProductID
    GROUP BY o.OrderID
) t;

----Number of orders per customer 

SELECT c.Name, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
ORDER BY TotalOrders DESC; 

------Customers who placed more than one order

SELECT c.Name, COUNT(o.OrderID) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING COUNT(o.OrderID) > 1; 

-----Total quantity sold per category

SELECT c.CategoryName, SUM(oi.Quantity) AS TotalQuantity
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY TotalQuantity DESC;

---Rank customers based on total spending

SELECT 
    c.Name,
    SUM(p.Price * oi.Quantity) AS TotalSpent,
    RANK() OVER (ORDER BY SUM(p.Price * oi.Quantity) DESC) AS RankPosition
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY c.Name;

---Running (cumulative) revenue by date

SELECT 
    o.OrderDate,
    SUM(p.Price * oi.Quantity) AS DailyRevenue,
    SUM(SUM(p.Price * oi.Quantity)) OVER (ORDER BY o.OrderDate) AS RunningRevenue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

---------Highest value order for each customer 

SELECT *
FROM (
    SELECT 
        c.Name,
        o.OrderID,
        SUM(p.Price * oi.Quantity) AS OrderValue,
        RANK() OVER (PARTITION BY c.CustomerID ORDER BY SUM(p.Price * oi.Quantity) DESC) AS rnk
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    JOIN Products p ON oi.ProductID = p.ProductID
    GROUP BY c.Name, o.OrderID, c.CustomerID
) t
WHERE rnk = 1;

----Customers who placed only one order

SELECT c.Name
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING COUNT(o.OrderID) = 1;

-----Top-selling category using CTE 

WITH CategorySales AS (
    SELECT 
        c.CategoryName,
        SUM(oi.Quantity) AS TotalSold
    FROM OrderItems oi
    JOIN Products p ON oi.ProductID = p.ProductID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    GROUP BY c.CategoryName
)
SELECT TOP 1 *
FROM CategorySales
ORDER BY TotalSold DESC;



