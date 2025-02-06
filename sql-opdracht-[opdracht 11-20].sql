--opdracht 11--
SELECT
    FirstName,
    LastName,
    Country
FROM employees
WHERE NOT Country = 'USA';

--opdracht 12--
SELECT
    EmployeeID,
    OrderID,
    CustomerID,
    RequiredDate,
    ShippedDate,
    OrderDate
FROM orders
WHERE Shippeddate > RequiredDate;

--opdracht 13--
SELECT City, CompanyName, ContactName
FROM customers
WHERE City LIKE 'A%' OR City LIKE 'B%';

--opdracht 14--
SELECT OrderID
FROM Orders
WHERE OrderID % 2 = 0;

--opdracht 15--
SELECT Freight
FROM orders
WHERE Freight > 500;

--opdracht 16--
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM products
WHERE ReorderLevel > 0;

--opdracht 17--
SELECT CompanyName, ContactName
FROM customers
WHERE Fax IS NULL;

--opdracht 18--
SELECT
    FirstName,
    LastName
FROM employees
WHERE ReportsTo IS NULL;

--opdracht 19--
SELECT OrderID
FROM orders
WHERE OrderID % 2 = 1;

--opdracht 20--
SELECT CompanyName, ContactName, Fax
FROM customers
WHERE Fax IS NULL
ORDER BY ContactName;
