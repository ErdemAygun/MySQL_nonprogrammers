CREATE TABLE IF NOT EXISTS Orders (
  OrderID INT NOT NULL AUTO_INCREMENT,
  CreationDate DATETIME,
  TotalDue DOUBLE,
  OrderStatus VARCHAR(50),
  CustomerID int NOT NULL,
  SalespersonID int NOT NULL,
  PRIMARY KEY (OrderID),
  KEY CustomerID2 (CustomerID),
  CONSTRAINT CustomerID2 FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
);