use HPlus;

SELECT Salesperson.FirstName, Salesperson.LastName, Orders.TotalDue 
FROM Salesperson
INNER JOIN Orders ON Salesperson.SalespersonID = Orders.SalespersonID;
