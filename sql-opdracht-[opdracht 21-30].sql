--opdracht 21--
SELECT City, CompanyName, ContactName
FROM customers
WHERE Country LIKE '%L%'
ORDER BY ContactName;

--opdracht 22--
SELECT FirstName, LastName, BirthDate
FROM employees
WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31';

--opdracht 23--
SELECT FirstName, LastName, YEAR(BirthDate) AS BirthYear
FROM employees

--opdracht 24--
SELECT OrderID, COUNT(OrderID) AS NumberofOrders
FROM OrderDetails
GROUP BY OrderID
ORDER BY NumberofOrders DESC;

--opdracht 25--
SELECT
    products.SupplierID,
    products.ProductName,
    suppliers.CompanyName
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE suppliers.CompanyName IN('Exotic Liquids', 'Specialty Biscuits, Ltd.','Escargots Nouveaux')
ORDER BY products.SupplierID;

--opdracht 26--
SELECT ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress
FROM orders
WHERE ShipPostalCode LIKE '98124%';

--opdracht 27--

--opdracht 28--

--opdracht 29--

--opdracht 30--

