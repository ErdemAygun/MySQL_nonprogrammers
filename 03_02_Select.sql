USE HPlus;

SELECT OrderID, TotalDue Status, CustomerID FROM Orders WHERE TotalDue > 300;