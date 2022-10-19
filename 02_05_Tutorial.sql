CREATE DATABASE IF NOT EXISTS tutorial;
USE tutorial;

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
  CustomerID int NOT NULL AUTO_INCREMENT,
  FirstName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  Email varchar(50) DEFAULT NULL,
  Phone varchar(50) DEFAULT NULL,
  Address varchar(50) DEFAULT NULL,
  City varchar(50) DEFAULT NULL,
  State varchar(50) DEFAULT NULL,
  Zipcode varchar(50) DEFAULT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE IF NOT EXISTS Product (
  ProductID int NOT NULL AUTO_INCREMENT,
  ProductCode varchar(50) DEFAULT NULL,
  ProductName varchar(50) DEFAULT NULL,
  Size int DEFAULT NULL,
  Variety varchar(50) DEFAULT NULL,
  Price double DEFAULT NULL,
  Status varchar(50) DEFAULT NULL,
  PRIMARY KEY (ProductID)
);

CREATE TABLE IF NOT EXISTS Salesperson (
  SalespersonID int NOT NULL AUTO_INCREMENT,
  FirstName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  Email varchar(50) DEFAULT NULL,
  Phone varchar(50) DEFAULT NULL,
  Address varchar(50) DEFAULT NULL,
  City varchar(50) DEFAULT NULL,
  State varchar(50) DEFAULT NULL,
  Zipcode varchar(50) DEFAULT NULL,
  PRIMARY KEY (SalespersonID)
);

CREATE TABLE IF NOT EXISTS Orders (
  OrderID int NOT NULL AUTO_INCREMENT,
  CreationDate datetime DEFAULT NULL,
  TotalDue double DEFAULT NULL,
  Status varchar(50) DEFAULT NULL,
  CustomerID int NOT NULL,
  SalespersonID int NOT NULL,
  PRIMARY KEY (OrderID),
  KEY CustomerID (CustomerID),
  KEY SalespersonID (SalespersonID),
  CONSTRAINT CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
  CONSTRAINT SalespersonID FOREIGN KEY (SalespersonID) REFERENCES Salesperson (SalespersonID)
);

CREATE TABLE IF NOT EXISTS OrderItem (
  OrderItemID int NOT NULL AUTO_INCREMENT,
  OrderID int NOT NULL,
  ProductID int NOT NULL,
  Quantity int DEFAULT NULL,
  PRIMARY KEY (OrderItemID),
  KEY OrderID (OrderID),
  KEY ProductID (ProductID),
  CONSTRAINT OrderID FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
  CONSTRAINT orderitem_ibfk_1 FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);
