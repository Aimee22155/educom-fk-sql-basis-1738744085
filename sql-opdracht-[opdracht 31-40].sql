--opdracht 31--
SELECT ContactName
FROM customers
WHERE ContactName NOT LIKE '_A%';

--opdracht 32--
SELECT
    CEIL(AVG(UnitPrice)) AS AveragePrice,
    SUM(UnitsInStock) AS TotalStock,
    MAX(UnitsOnOrder) AS MaxOrder
FROM products;

--opdracht 33--
SELECT
    products.SupplierID,
    suppliers.CompanyName,
    categories.CategoryName,
    products.Productname,
    products.UnitPrice
FROM ((products 
INNER JOIN categories ON products.CategoryID = categories.CategoryID)
INNER JOIN suppliers ON products.SupplierID = suppliers.SupplierID);

--opdracht 34--
SELECT CustomerID, SUM(Freight)
FROM orders
GROUP BY CustomerID
HAVING SUM(Freight) > 200;

--opdracht 35--
SELECT 
    orders.OrderID, 
    customers.ContactName, 
    order_details.UnitPrice, 
    order_details.Quantity, 
    order_details.Discount
FROM order_details
JOIN orders ON order_details.OrderID = orders.OrderID
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE order_details.Discount > 0;

--opdracht 36--
SELECT 
    E1.EmployeeID, 
    E1.LastName AS EmployeeLastName, 
    E1.FirstName AS EmployeeFirstName, 
    E2.LastName AS ManagerLastName, 
    E2.FirstName AS ManagerFirstName
FROM employees E1, employees E2
WHERE E1.ReportsTo = E2.EmployeeID
ORDER BY E1.EmployeeID;

--opdracht 37--
SELECT 
    AVG(UnitPrice) AS AveragePrice, 
    MIN(UnitPrice) AS MinimumPrice, 
    MAX(UnitPrice) AS MaximumPrice
FROM Products;

--opdracht 38--
CREATE VIEW CustomerInfo AS
SELECT 
    customers.CustomerID, 
    customers.CompanyName, 
    customers.ContactName, 
    customers.ContactTitle, 
    customers.Address, 
    customers.City, 
    customers.Country, 
    customers.Phone, 
    orders.OrderDate, 
    orders.RequiredDate, 
    orders.ShippedDate
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID;

--opdracht 39--
DROP VIEW CustomerInfo;
CREATE VIEW CustomerDetails AS
SELECT 
  customers.CustomerID, 
    customers.CompanyName, 
    customers.ContactName, 
    customers.ContactTitle, 
    customers.Address, 
    customers.City, 
    customers.Country, 
    customers.Phone, 
    orders.OrderDate, 
    orders.RequiredDate, 
    orders.ShippedDate
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID;

--opdracht 40--
CREATE VIEW ProductDetails AS
SELECT
    p.ProductID,
    s.CompanyName,
    p.ProductName,
    c.CategoryName,
    c.Description,
    p.QuantityPerUnit,
    p.UnitPrice,
    p.UnitsInStock,
    p.UnitsOnOrder,
    p.ReorderLevel,
    p.Discontinued
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
JOIN Categories c ON p.CategoryID = c.CategoryID;
