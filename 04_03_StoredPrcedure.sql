use HPlus;

SELECT Orders.OrderID, Customer.FirstName, Customer.Phone, Salesperson.FirstName, Salesperson.LastName, Orders.Status FROM Orders 
INNER JOIN Customer ON Orders.CustomerID = Customer.CustomerID
INNER JOIN Salesperson ON Orders.SalespersonID = Salesperson.SalespersonID
WHERE Orders.Status = 'Past Due';
