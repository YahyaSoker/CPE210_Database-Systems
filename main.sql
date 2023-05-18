-- Cities table
CREATE TABLE Cities (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(255)
);

-- Shops table
CREATE TABLE Shops (
    ShopID INT PRIMARY KEY,
    CityID INT,
    ShopName VARCHAR(255),
    FOREIGN KEY (CityID) REFERENCES Cities(CityID)
);

-- ShopOwners table
CREATE TABLE ShopOwners (
    OwnerID INT PRIMARY KEY,
    OwnerName VARCHAR(255),
    ShopID INT,
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

-- Brands table
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(255),
    OwnerID INT,
    FOREIGN KEY (OwnerID) REFERENCES ShopOwners(OwnerID)
);

-- Cars table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    BrandID INT,
    Price DECIMAL(10, 2),
    ManufacturingDate DATE,
    FOREIGN KEY (BrandID) REFERENCES Brands(BrandID)
);

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Token VARCHAR(255),
    ShopLocation VARCHAR(255),
    CarID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);

-- CarParts table
CREATE TABLE CarParts (
    PartID INT PRIMARY KEY,
    PartName VARCHAR(255) NOT NULL,
    CarID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);
