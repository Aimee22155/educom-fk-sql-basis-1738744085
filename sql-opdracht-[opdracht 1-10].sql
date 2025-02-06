--Opdracht 1--
SELECT
    CategoryName,
    Description
FROM categories
ORDER BY CategoryName


--Opdracht 2--
SELECT
    CompanyName,
    ContactName,
    ContactTitle,
    Phone
FROM customers
ORDER BY Phone;

--opdracht 3--
SELECT UPPER(FirstName) AS FirstName, UPPER(LastName) AS LastName, HireDate 
FROM employees 
ORDER BY Hiredate ASC;

--opdracht 4--
SELECT 
    OrderID, 
    OrderDate, 
    ShippedDate, 
    CustomerID,
    Freight
FROM orders
ORDER BY Freight DESC
LIMIT 10;

--opdracht 5--
SELECT LOWER(CustomerID) AS ID
FROM customers;

--opdracht 6--
SELECT 
    CompanyName, 
    Fax, 
    Phone,
    Country, 
    HomePage
FROM suppliers
ORDER BY Country Desc, CompanyName ASC;

--opdracht 7--
SELECT 
    CompanyName, 
    ContactName, 
    City
FROM customers
WHERE City= 'Buenos Aires';

--opdracht 8--
SELECT 
    ProductName, 
    UnitPrice, 
    QuantityPerUnit, 
    UnitsInStock
FROM products
WHERE UnitsInStock = 0;

--opdracht 9--
SELECT 
    ContactName, 
    Address, 
    City, 
    Country
FROM customers
WHERE Country NOT IN ('Germany', 'Mexico', 'Spain'); 

--opdracht 10--
SELECT
    OrderDate,
    ShippedDate,
    CustomerID,
    Freight
FROM orders
WHERE OrderDate = '1996-05-21 00:00:00';

