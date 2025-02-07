--opdracht 41--
DROP VIEW CustomerDetails;

--opdracht 42--
SELECT 
    LEFT(CategoryName, 5) AS ShortInfo
FROM Categories;

--opdracht 43--
CREATE TABLE shippers_duplicate 
LIKE Shippers;

INSERT INTO shippers_duplicate 
SELECT * FROM Shippers;

--opdracht 44--
SELECT 
    ShipperID, 
    CompanyName, 
    Phone
FROM shippers_duplicate;

--opdracht 45--
SELECT 
    s.CompanyName, 
    p.ProductName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood';

--opdracht 46--
SELECT 
    p.CategoryID, 
    s.CompanyName, 
    p.ProductName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.CategoryID = 5;

--opdracht 47--
DROP TABLE shippers_duplicate;

--opdracht 48--
 SELECT
    LastName,
    FirstName,
    Title,
    (YEAR(CURDATE())-YEAR(BirthDate)) Age
FROM employees;

--opdracht 49--
SELECT
    c.CompanyName,
    SUM(o.OrderID) AS NumberOfOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate > '1994-12-31'
GROUP BY c.CompanyName
HAVING COUNT(o.OrderID) > 10;

--opdracht 50--
SELECT CONCAT(ProductName, ' ', 'weight/is', ' ', QuantityPerUnit, ' ', 'and costs', ' ', '$', UnitPrice) AS 'Contactinfo'
FROM products;
ALTER TABLE products
MODIFY COLUMN UnitPrice INT;

