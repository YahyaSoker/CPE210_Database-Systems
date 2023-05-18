-- CarBrands table
CREATE TABLE CarBrands (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(255) NOT NULL,
    CountryOfOrigin VARCHAR(255),
    YearFounded INT,
    CEOName VARCHAR(255),
    HeadquartersAddress VARCHAR(255),
    Website VARCHAR(255)
);

-- CarParts table
CREATE TABLE CarParts (
    PartID INT PRIMARY KEY,
    PartName VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(10, 2),
    SupplierName VARCHAR(255),
    SupplierContactNumber VARCHAR(255),
    SupplierAddress VARCHAR(255)
);

-- Shops table
CREATE TABLE Shops (
    ShopID INT PRIMARY KEY,
    ShopName VARCHAR(255),
    OwnerID INT,
    Location VARCHAR(255),
    PhoneNumber VARCHAR(255),
    OpeningHours VARCHAR(255),
    Website VARCHAR(255),
    Email VARCHAR(255)
);

-- ShopOwners table
CREATE TABLE ShopOwners (
    OwnerID INT PRIMARY KEY,
    OwnerName VARCHAR(255),
    ContactNumber VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255)
);

-- Cars table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    BrandID INT,
    Price DECIMAL(10, 2),
    ManufacturingDate DATE,
    ShopID INT,
    Mileage INT,
    Color VARCHAR(255),
    VIN VARCHAR(255),
    TransmissionType VARCHAR(255),
    EngineType VARCHAR(255),
    FuelType VARCHAR(255),
    NumDoors INT,
    NumSeats INT,
    NumCylinders INT,
    Horsepower INT,
    Torque INT,
    Weight DECIMAL(10, 2),
    Length DECIMAL(10, 2),
    Width DECIMAL(10, 2),
    Height DECIMAL(10, 2),
    Wheelbase DECIMAL(10, 2),
    FOREIGN KEY (BrandID) REFERENCES CarBrands(BrandID),
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Token VARCHAR(255),
    ShopLocation VARCHAR(255),
    CarID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);

-- CarPartsMapping table
CREATE TABLE CarPartsMapping (
    CarID INT,
    PartID INT,
    PRIMARY KEY (CarID, PartID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (PartID) REFERENCES CarParts(PartID)
);
