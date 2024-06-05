-- USE TeamProject;
-- -- Join - Inner Join to retrieve all tickets with customer information
-- SELECT t.TicketNum, t.TDate, t.TTime, t.FineAmount, c.CFName, c.CLName, c.Phone
-- FROM Ticket t
-- INNER JOIN Vehicle v ON t.LicensePlateNum = v.LicensePlateNum
-- INNER JOIN Customer c ON v.CustomerID = c.CustomerID;

-- -- Delete - Delete a specific ticket from the Ticket table
-- DELETE FROM Ticket
-- WHERE TicketNum = 12345;

-- -- Aggregate function - Calculate the total fine amount collected
-- SELECT SUM(FineAmount) AS TotalFineAmount
-- FROM Ticket;

-- -- View - Create a view to display the details of all long-term passes.
-- SELECT SUM(FineAmount) AS TotalFineAmount
-- FROM Ticket;

-- -- Join - Left Join to retrieve all customers and their associated vehicles (including those without vehicles)
-- SELECT c.CFName, c.CLName, v.LicensePlateNum
-- FROM Customer c
-- LEFT JOIN Vehicle v ON c.CustomerID = v.CustomerID;

-- -- Update - Update the vehicle owned by a specific customer. 
-- UPDATE Vehicle
-- SET make = 'Toyota', color = 'White', LicensePlateNum = 'AB123', year = 2000
-- WHERE CustomerID = 123;

-- -- Delete - Delete all short-term passes that have expired.
-- DELETE FROM ShortTermPass
-- WHERE EDate < CURDATE();

-- -- View - Create a view to display the details of all short-term passes.
-- CREATE VIEW ShortTermPassView AS
-- SELECT Pass_num, SDate, STime, EDate, ETime, SessionCost, LicensePlateNum
-- FROM ShortTermPass;

-- -- Update - Update the phone number of a customer with a specific ID.
-- UPDATE Customer
-- SET Phone = '555-1234'
-- WHERE CustomerID = 456;

-- -- Aggregate function - Calculate the minimum fine amount.
-- SELECT MIN(FineAmount) AS MinFineAmount
-- FROM Ticket;

-- -- Nested query - Retrieve all vehicles owned by customers who have a long-term pass
-- SELECT LicensePlateNum, make, year, color
-- FROM Vehicle
-- WHERE CustomerID IN (SELECT DISTINCT CustomerID FROM LongTermPass);


-- -- View - Create a view to display the details of all tickets with customer and employee information.
-- CREATE VIEW TicketView AS
-- SELECT t.TicketNum, t.TDate, t.TTime, t.FineAmount, c.CFName, c.CLName, c.Phone, e.EFName, e.ELName
-- FROM Ticket t
-- INNER JOIN Vehicle v ON t.LicensePlateNum = v.LicensePlateNum
-- INNER JOIN Customer c ON v.CustomerID = c.CustomerID
-- INNER JOIN Employee e ON t.EmployeeID = e.EmployeeID;

-- -- Update - Update the stall number of a specific vehicle in a parking lot block.
-- UPDATE Block_Stall
-- SET StallNum = 10
-- WHERE LotID = 1 AND BlockCode = 2 AND LicensePlateNum = 'XYZ789';

-- -- Delete - Delete all tickets issued by a specific employee.
-- DELETE FROM Ticket
-- WHERE EmployeeID = 789;

-- -- Inner Join - Show cars that have been issued a ticket over the threshold number of times
-- SELECT v.LicensePlateNum, v.make, v.year, v.color
-- FROM Vehicle v
-- INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
-- GROUP BY v.LicensePlateNum, v.make, v.year, v.color
-- HAVING COUNT(t.TicketNum) > 5;

-- -- Inner Join - Show cars with unpaid tickets
-- SELECT v.LicensePlateNum, v.make, v.year, v.color
-- FROM Vehicle v
-- INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
-- WHERE PaymentStatus = 'Unpaid';

-- -- Calculate yearly revenue from pass
-- SELECT YEAR(SDate) AS Year, SUM(PassCost) AS YearlyRevenue
-- FROM LongTermPass
-- GROUP BY YEAR(SDate);

-- -- Update - Update ticket payment status
-- UPDATE Ticket
-- SET PaymentStatus = 'Paid'
-- WHERE TicketNum = 123;

-- -- Inner Join - Show tickets issued by distinct employees
-- SELECT DISTINCT e.EmployeeID, e.EFName, e.ELName, t.TicketNum, t.TDate, t.TTime, t.FineAmount
-- FROM Ticket t
-- INNER JOIN Employee e ON t.EmployeeID = e.EmployeeID;

-- -- Update - Update the time when a pass is renewed.
-- UPDATE LongTermPass
-- SET SDate = '2024-03-25', 
-- EDate = '2025-03-25'
-- WHERE Pass_num = 7890;

-- -- Update - Update Start and End dates when pass is renewed
-- UPDATE LongTermPass
-- SET SDate = GETDATE()
-- WHERE Pass_num = 6789;

USE G6ParkingLot;

-- 1. Join - Inner Join to retrieve all tickets with customer information
SELECT t.TicketNum, t.TDate, t.TTime, t.FineAmount, c.CFName, c.CLName, c.Phone
FROM Ticket t
INNER JOIN Vehicle v ON t.LicensePlateNum = v.LicensePlateNum
INNER JOIN Customer c ON v.CustomerID = c.CustomerID;

-- 2. Delete - Delete a specific ticket from the Ticket table
DELETE FROM Ticket
WHERE TicketNum = 12345;

-- 3. Aggregate function - Calculate the total fine amount collected
SELECT SUM(FineAmount) AS TotalFineAmount
FROM Ticket;

-- 4. Update - Update the phone number of a customer with a specific ID.
UPDATE Customer
SET Phone = '555-1234'
WHERE CustomerID = 456;

-- 5. Nested query - Show number of tickets issued by distinct employees
SELECT CFName, CLName
FROM Customer
WHERE CustomerID IN (SELECT DISTINCT CustomerID FROM Vehicle WHERE color = 'Red');

-- 6. Natural Join - Show vehicles with respective CustomerID, CFirstName and CLastName
SELECT LicensePlateNum, CustomerID, CFName, CLName
FROM Vehicle NATURAL JOIN Customer;

-- 7. Left Join & Aggregate - Show Total Number of Parking Blocks and Block Stalls each Parking Lot has
SELECT p.LotID, COUNT(pb.BlockCode) AS NumberOfParkingBlocks, COUNT(bs.StallNum) AS NumberOfBlockStalls
FROM ParkingLot p
LEFT JOIN ParkingBlock pb ON p.LotID = pb.LotID
LEFT JOIN Block_Stall bs ON pb.BlockCode = bs.BlockCode AND pb.LotID = bs.LotID
GROUP BY p.LotID;

-- 8. Show number of Tickets issued by Distinct employees
SELECT e.EmployeeID, e.Employee_FName, e.Employee_LName, COUNT(*) AS TicketCount
FROM Ticket t
INNER JOIN Employee e ON t.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.Employee_FName, e.Employee_LName;

-- 9. Inner Join - Show cars with unpaid tickets
SELECT v.LicensePlateNum, v.make, v.year, v.color
FROM Vehicle v
INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
WHERE TicketPaymentStatus = 'Unpaid';

-- 10. Inner Join - Show cars that have been issued a ticket over the threshold number of times
SELECT v.LicensePlateNum, v.make, v.year, v.color
FROM Vehicle v
INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
GROUP BY v.LicensePlateNum, v.make, v.year, v.color
HAVING COUNT(t.TicketNum) > 3;

-- 11. Create view - Show cars that are not allowed to park
CREATE VIEW More_Than_3_tickets AS
SELECT v.LicensePlateNum, v.make, v.year, v.color
FROM Vehicle v
INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
GROUP BY v.LicensePlateNum, v.make, v.year, v.color
HAVING COUNT(t.TicketNum) > 3;

CREATE VIEW Unpaid_tickets AS
SELECT v.LicensePlateNum, v.make, v.year, v.color
FROM Vehicle v
INNER JOIN Ticket t ON v.LicensePlateNum = t.LicensePlateNum
WHERE TicketPaymentStatus = 'Unpaid';

SELECT * FROM More_Than_3_tickets
UNION
SELECT * FROm Unpaid_tickets;

-- 12. Show the parking lot with the highest total fine amount
SELECT p.LotID, SUM(t.FineAmount) AS AverageFineAmount
FROM ParkingLot_Block pb
LEFT JOIN ParkingLot p ON p.LotID = pb.LotID
LEFT JOIN Block_Stall bs ON pb.LotID = bs.LotID AND pb.BlockCode = bs.BlockCode
LEFT JOIN Ticket t ON bs.LotID = t.LotID AND bs.BlockCode = t.BlockCode AND bs.StallNum = t.StallNum
GROUP BY p.LotID
ORDER BY AverageFineAmount DESC; -- change to right join

-- 13. Show LicensePlateNum, Make, Year, Color, CFName, CLName whose vehicle make is Nissan
SELECT LicensePlateNum, Make, Year, color, CFName, CLName
FROM Customer c, Vehicle v
WHERE c.CustomerID = v.CustomerID AND Make LIKE 'Nissan%';

-- 14. Show CustomerID, CLName, CFName whose last name is exactly 5 letters
SELECT CustomerID, CLName, CFName
FROM Customer
WHERE CLName LIKE '_____';

-- 15 Retrieve the number of days each customer's vehicle have spent for long term passes
SELECT LongTermPass.CustomerID, CFName, CLName, LicensePlateNum, EDate-SDate AS Days, PassCost
FROM LongTermPass JOIN Customer ON LongTermPass.CustomerID = Customer.CustomerID AND LongTermPass.LicensePlateNum = Customer.LicensePlaceNum
ORDER BY Days;

-- 16. Show ShortTermPass session cost for daily vehicles on a certain date 
SELECT ShortTermPass.LicensePlateNum, (ETime-STime) * RatePerHour AS SessionCost
FROM ShortTermPass JOIN Vehicle ON ShortTermPass.LicensePlateNum = Vehicle.LicensePlateNum
WHERE SDate = EDate AND EDate = '2023-03-04'
ORDER BY SessionCost;
