CREATE DATABASE ShopDB;

USE ShopDB;

Create Table Countries (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    NAME VARCHAR(50)
);

CREATE TABLE Warehouses (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    Name VARCHAR(50),
    Amount INT,
    WarehouseID INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION
);

INSERT INTO Countries (NAME)
    VALUES ('Country1'), ('Country2');


INSERT INTO Warehouses (WarehouseName, WarehouseAddress, CountryID)
    VALUES ('Warehouse-1', 'City-1, Street-1', 1), ('Warehouse-2', 'City-2, Street-1', 2);

INSERT INTO ProductInventory (Name, Amount, WarehouseID)
    VALUES ('Product-1', 2, 1), ('Product-2', 5, 2);
