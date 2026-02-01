# Create Database salesdashboard
CREATE DATABASE salesdashboard;
USE salesdashboard;

# Create Table
 CREATE TABLE Customers (
    Customer_Index INTEGER PRIMARY KEY,
    Customer_Names VARCHAR(50)
);

CREATE TABLE Regions (
    RegionIndex INTEGER PRIMARY KEY,
    City VARCHAR(50),
    Country VARCHAR(50),
    Full_Name VARCHAR(100)
);

CREATE TABLE Products (
    ProductIndex INTEGER PRIMARY KEY,
    Product_Name VARCHAR(100)
);

CREATE TABLE SalesOrders (
    OrderNumber VARCHAR(50) PRIMARY KEY,
    OrderDate DATE,
    Customer_Name_Index INTEGER REFERENCES Customers (Customer_Index),
    Channel VARCHAR(50),
    Currency_Code VARCHAR(10),
    Warehouse_Code VARCHAR(30),
    Delivery_Region_Index INTEGER REFERENCES Regions (RegionIndex),
    Product_Description_Index INTEGER REFERENCES Produts (ProductIndex),
    Order_Quantity INTEGER,
    Unit_Price DECIMAL(8 , 2 ),
    Line_Total DECIMAL(8 , 2 ),
    Total_Unit_Cost DECIMAL(8 , 2 )
); 

CREATE TABLE 2017Budgets (
    Product_Name VARCHAR(100),
    2017Budgets DECIMAL(10 , 2 )
);

SELECT * FROM Customers LIMIT 10;
SELECT * FROM Products LIMIT 10;
SELECT * FROM Regions LIMIT 10;
SELECT * FROM 2017Budgets LIMIT 10;
SELECT * FROM SalesOrders LIMIT 10;

