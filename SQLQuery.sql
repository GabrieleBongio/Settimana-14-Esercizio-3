-- Esercizio 1
SELECT COUNT (*) AS NumberOfOrders FROM Orders
-- Esercizio 2
SELECT COUNT (*) AS NumberOfCustomers FROM Customers
-- Esercizio 3
SELECT COUNT (*) AS NumberOfLondonCustomers FROM Customers WHERE City='London'
-- Esercizio 4
SELECT AVG(Freight) AS AverageFreight FROM Orders
-- Esercizio 5
SELECT CustomerID, AVG(Freight) AS AverageFreight FROM Orders GROUP BY CustomerID HAVING CustomerID='BOTTM'
-- Esercizio 6
SELECT CustomerID, SUM(Freight) AS TotalFreight FROM Orders GROUP BY CustomerID ORDER BY TotalFreight DESC
-- Esercizio 7
SELECT City, COUNT(*) AS TotalCustomers FROM Customers GROUP BY City ORDER BY TotalCustomers DESC, City
-- Esercizio 8
SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalPrice FROM [Order Details] GROUP BY OrderID
-- Esercizio 9
SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalPrice FROM [Order Details] GROUP BY OrderID HAVING OrderID=10248
-- Esercizio 10
SELECT CategoryID, COUNT(*) AS TotalProducts FROM Products GROUP BY CategoryID
-- Esercizio 11
SELECT ShipCountry, COUNT(*) AS TotalOrders FROM Orders GROUP BY ShipCountry ORDER BY TotalOrders DESC
-- Esercizio 12
SELECT ShipCountry, AVG(Freight) AS AverageFreight FROM Orders GROUP BY ShipCountry ORDER BY AverageFreight DESC