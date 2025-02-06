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
