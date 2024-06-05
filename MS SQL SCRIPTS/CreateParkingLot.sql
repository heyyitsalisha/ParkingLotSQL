-- the entire code works perfectly on MySQL

CREATE DATABASE G6ParkingLot;
USE G6ParkingLot;

-- Creating the ParkingLot table
CREATE TABLE ParkingLot (
    LotID INT PRIMARY KEY
);

-- Creating the ParkingLot_Block table
CREATE TABLE ParkingLot_Block (
    LotID INT,
    BlockCode INT,
    PRIMARY KEY (LotID, BlockCode),
    FOREIGN KEY (LotID) REFERENCES ParkingLot(LotID) ON DELETE CASCADE
);

-- Creating the Block_Stall table
CREATE TABLE Block_Stall (
    LotID INT,
    BlockCode INT,
    StallNum INT,
    Size VARCHAR(20),
    Type VARCHAR(20),
    PRIMARY KEY (LotID, BlockCode, StallNum),
    FOREIGN KEY (LotID, BlockCode) REFERENCES ParkingLot_Block(LotID, BlockCode) ON DELETE CASCADE
);

-- Creating the Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CFName VARCHAR(25),
    CLName VARCHAR(25),
    Phone VARCHAR(20)
);

-- Creating the Vehicle table
CREATE TABLE Vehicle (
    LicensePlateNum VARCHAR(6) PRIMARY KEY,
    make VARCHAR(20),
    year INT,
    color VARCHAR(10),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creating the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EFName VARCHAR(25),
    ELName VARCHAR(25)
);

-- Creating the Ticket table
CREATE TABLE Ticket (
    TicketNum INT PRIMARY KEY,
    TDate DATE,
    TTime TIME,
    FineAmount DECIMAL(10,2),
    EmployeeID INT,
    LicensePlateNum VARCHAR(6),
    LotID INT,
    BlockCode INT,
    StallNum INT,
    TicketPaymentStatus VARCHAR(10),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (LicensePlateNum) REFERENCES Vehicle(LicensePlateNum),
    FOREIGN KEY (LotID, BlockCode, StallNum) REFERENCES Block_Stall(LotID, BlockCode, StallNum)
);

-- Creating the LongTermPass table
CREATE TABLE LongTermPass (
    Pass_num INT PRIMARY KEY,
    SDate DATE,
    STime TIME,
    EDate DATE,
    ETime TIME,
    PassCost DECIMAL(10,2),
    DurationType VARCHAR(10),
    LicensePlateNum VARCHAR(6),
    CustomerID INT,
    FOREIGN KEY (LicensePlateNum) REFERENCES Vehicle(LicensePlateNum),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creating the ShortTermPass table
CREATE TABLE ShortTermPass (
    Pass_num INT PRIMARY KEY,
    SDate DATE,
    STime TIME,
    EDate DATE,
    ETime TIME,
    RatePerHour DECIMAL(10,2),
    LicensePlateNum VARCHAR(6),
    FOREIGN KEY (LicensePlateNum) REFERENCES Vehicle(LicensePlateNum)
);

