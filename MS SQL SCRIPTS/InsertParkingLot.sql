-- the entire code works perfectly on MySQL

USE G6ParkingLot;

-- -- Inserting data into ParkingLot table
-- INSERT INTO ParkingLot (LotID) VALUES (1);
-- INSERT INTO ParkingLot (LotID) VALUES (2);
-- INSERT INTO ParkingLot (LotID) VALUES (3);

-- -- Inserting data into ParkingLot_Block table
-- INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 1);
-- INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 2);
-- INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (2, 1);
-- INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (2, 2);

-- -- Inserting data into Block_Stall table
-- INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 1, 1, 'Small', 'Bicycle');
-- INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 1, 2, 'Large', 'Handicap');
-- INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 2, 1, 'Medium', 'Police');
-- INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 1, 1, 'Small', 'Standard');
-- INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 1, 2, 'Large', 'Standard');

-- -- Inserting data into Customer table
-- INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00001, 'Rachel', 'Green', '123-456-7890');
-- INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00002, 'Chandler', 'Bing', '987-654-3210');
-- INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00003, 'Monica', 'Geller', '555-123-4567');

-- -- Inserting data into Vehicle table
-- INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('ABC123', 'Toyota', 2022, 'Blue', 00001);
-- INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('XYZ789', 'Honda', 2020, 'Red', 00002);
-- INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('DEF456', 'Ford', 2021, 'Silver', 00003);

-- -- Inserting data into LongTermPass table
-- INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, DurationType, LicensePlateNum, CustomerID) VALUES (001, '2023-01-01', '08:00:00', '2024-01-01', '08:00:00', 500.00, 'Yearly', 'ABC123', 00001);
-- INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, DurationType, LicensePlateNum, CustomerID) VALUES (002, '2023-07-01', '12:00:00', '2023-07-07', '12:00:00', 30.00, 'Weekly', 'XYZ789', 00002);

-- -- Inserting data into ShortTermPass table
-- INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000001, '2023-06-30', '14:00:00', '2023-06-30', '18:00:00', 10.00, 'DEF456');
-- INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000002, '2023-07-05', '10:00:00', '2023-07-05', '12:00:00', 10.00, 'ABC123');

-- -- Inserting data into Employee table
-- INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (999, 'Sheldon', 'Cooper');
-- INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (007, 'James', 'Bond');

-- -- Inserting data into Ticket table
-- INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (781, '2023-07-02', '09:30:00', 25.00, 999, 'ABC123', 1, 1, 1, 'Paid');
-- INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (012, '2023-07-03', '14:45:00', 15.00, 007, 'XYZ789', 2, 1, 2, 'Unpaid');


-- Inserting data into ParkingLot table
INSERT INTO ParkingLot (LotID) VALUES (1);
INSERT INTO ParkingLot (LotID) VALUES (2);
INSERT INTO ParkingLot (LotID) VALUES (3);

 
-- Inserting data into ParkingLot_Block table
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 1);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 2);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 3);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (1, 4);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (2, 1);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (2, 2);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (2, 3);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (3, 1);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (3, 2);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (3, 3);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (3, 4);
INSERT INTO ParkingLot_Block (LotID, BlockCode) VALUES (3, 5);


-- Inserting data into Block_Stall table
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 1, 1, 'Small', 'Bicycle');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 1, 2, 'Large', 'Handicap');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 2, 1, 'Medium', 'Police');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (1, 2, 2, 'Large', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 1, 1, 'Small', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 1, 2, 'Large', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 1, 3, 'Medium', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 2, 1, 'Large', 'Police');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (2, 3, 1, 'Small', 'Bicycle');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 1, 1, 'Small', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 1, 2, 'Medium', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 2, 1, 'Medium', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 2, 2, 'Small', 'Police');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 3, 1, 'Small', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 3, 2, 'Medium', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 4, 1, 'Medium', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 4, 2, 'Large', 'Standard');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 4, 3, 'Large', 'Reserved');
INSERT INTO Block_Stall (LotID, BlockCode, StallNum, Size, Type) VALUES (3, 5, 1, 'Small', 'Police');


-- Inserting data into Customer table
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00001, 'Rachel', 'Green', '123-456-7890');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00002, 'Chandler', 'Bing', '987-654-3210');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00003, 'Monica', 'Geller', '555-123-4567');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00004, 'Jun', 'Sazanami', '124-168-2112');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00005, 'Sita', 'Sandykala', '112-288-1133');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00006, 'Liliana', 'Ardonarto', '998-234-3987');
INSERT INTO Customer (CustomerID, CFName, CLName, Phone) VALUES (00007, 'Yang', 'Mao', '978-214-1927');

-- Inserting data into Vehicle table
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('ABC123', 'Toyota', 2022, 'Blue', 00001);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('XYZ789', 'Honda', 2020, 'Red', 00002);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('DEF456', 'Ford', 2021, 'Silver', 00003);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('NHS456', 'Nissan', 2010, 'Red', 00003);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('JNZ128', 'Tesla', 2021, 'Black', 00004);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('KSZ121', 'Honda', 2019, 'White', 00004);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('IZJ812', 'Nissan', 2018, 'Silver', 00004);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('SSG112', 'Ford', 2018, 'White', 00005);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('IBT108', 'Honda', 2016, 'White', 00005);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('LLA019', 'Honda', 2020, 'Black', 00006);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('YGM390', 'Tesla', 2020, 'White', 00007);
INSERT INTO Vehicle (LicensePlateNum, make, year, color, CustomerID) VALUES ('PIO192', 'Tesla', 2021, 'Black', 00007);

-- Inserting data into LongTermPass table
INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, LicensePlateNum, CustomerID, DurationType) VALUES (001, '2023-01-01', '08:00:00', '2024-01-01', '08:00:00', 500.00, 'ABC123', 00001, 'Yearly');
INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, LicensePlateNum, CustomerID, DurationType) VALUES (002, '2023-07-01', '12:00:00', '2023-07-07', '12:00:00', 30.00, 'XYZ789', 00002, 'Weekly');
INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, LicensePlateNum, CustomerID, DurationType) VALUES (003, '2023-08-01', '08:00:00', '2023-08-07', '08:00:00', 500.00, 'ABC123', 00001, 'Weekly');
INSERT INTO LongTermPass (Pass_num, SDate, STime, EDate, ETime, PassCost, LicensePlateNum, CustomerID, DurationType) VALUES (004, '2023-07-09', '12:00:00', '2023-08-09', '12:00:00', 30.00, 'XYZ789', 00002, 'Monthly');


-- Inserting data into ShortTermPass table
INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000003, '2023-03-05', '18:10:00', '2023-03-05', '21:10:00', 10.00, 'IBT108');
INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000001, '2023-06-30', '14:00:00', '2023-06-30', '18:00:00', 5.00, 'DEF456');
INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000002, '2023-07-05', '10:00:00', '2023-07-05', '12:00:00', 5.00, 'ABC123');
INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000004, '2023-03-04', '17:00:00', '2023-07-05', '20:00:00', 10.00, 'KSZ121');
INSERT INTO ShortTermPass (Pass_num, SDate, STime, EDate, ETime, RatePerHour, LicensePlateNum) VALUES (0000005, '2023-03-04', '14:10:00', '2023-03-04', '15:00:00', 5.00, 'PIO192');

-- Inserting data into Employee table
INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (999, 'Sheldon', 'Cooper');
INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (007, 'James', 'Bond');
INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (111, 'Olympia', 'Soiree');
INSERT INTO Employee (EmployeeID, EFName, ELName) VALUES (102, 'Amy', 'Santiago');


-- Inserting data into Ticket table
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (001, '2023-07-02', '09:30:00', 25.00, 999, 'ABC123', 1, 1, 1, 'Paid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (002, '2023-03-03', '14:45:00', 15.00, 007, 'XYZ789', 2, 1, 2, 'Unpaid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (003, '2023-04-02', '08:30:00', 25.00, 999, 'JKL123', 1, 2, 1, 'Unpaid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (004, '2023-07-06', '13:45:00', 15.00, 999, 'XYZ789', 2, 3, 1, 'Unpaid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (005, '2023-07-12', '01:30:00', 25.00, 999, 'ABC123', 1, 2, 2, 'Paid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (006, '2023-10-11', '16:45:00', 15.00, 111, 'XYZ789', 2, 1, 3, 'Unpaid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (007, '2023-09-02', '08:30:00', 25.00, 102, 'ABC123', 1, 1, 2, 'Paid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (008, '2023-07-03', '10:45:00', 15.00, 007, 'XYZ789', 3, 1, 1, 'Unpaid');
INSERT INTO Ticket (TicketNum, TDate, TTime, FineAmount, EmployeeID, LicensePlateNum, LotID, BlockCode, StallNum, TicketPaymentStatus) VALUES (009, '2023-11-02', '00:30:00', 25.00, 999, 'XYZ789', 3, 1, 1, 'Unpaid');






-- Display Tables
SELECT * FROM ParkingLot;
SELECT * FROM ParkingLot_Block;
SELECT * FROM Block_Stall;
SELECT * FROM Customer;
SELECT * FROM Vehicle;
SELECT * FROM LongTermPass;
SELECT * FROM ShortTermPass;
SELECT * FROM Employee;
SELECT * FROM Ticket;

