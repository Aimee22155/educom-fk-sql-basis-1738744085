--Opdracht 1--
SELECT
    CategoryName,
    Description
FROM
    categories
ORDER BY
    CategoryName


--Opdracht 2--
SELECT
    CompanyName,
    ContactName,
    ContactTitle,
    Phone
FROM
    customers
ORDER BY
    Phone;

--opdracht 3--
SELECT UPPER(FirstName) AS FirstName, UPPER(LastName) AS LastName, HireDate 
FROM employees 
ORDER BY Hiredate ASC;

--opdracht 4--
SELECT OrderID, OrderDate, ShippedDate, CustomerID, Freight
FROM orders
ORDER BY Freight DESC
LIMIT 10;

--opdracht 5--
SELECT LOWER(CustomerID) AS ID
FROM customers;

--opdracht 6--
SELECT CompanyName, Fax, Phone, Country, HomePage
FROM suppliers
ORDER BY Country Desc, CompanyName ASC;

--opdracht 7--
SELECT CompanyName, ContactName, Country
FROM customers
WHERE Country= 'Buenos Aires';

