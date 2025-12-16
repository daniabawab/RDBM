
-- Dummy Data Only for restaurantdb

-- ROLES
INSERT INTO Role (RoleName, Description) VALUES
('Manager','Oversees branch operations'),
('Server','Serves customers'),
('Chef','Prepares food');

-- BRANCHES
INSERT INTO Branch (Name, Location, Status) VALUES
('Downtown','123 Main St','Open'),
('Uptown','45 Hill Ave','Open');

-- EMPLOYEES
INSERT INTO Employee (RoleID, BranchID, FirstName, LastName, Email, Status) VALUES
(1,1,'Alice','Morgan','alice@rest.com','Active'),
(2,1,'Bob','Turner','bob@rest.com','Active'),
(3,1,'Carlos','Diaz','carlos@rest.com','Active'),
(2,1,'Diana','Reeves','diana@rest.com','Active'),
(2,1,'Evan','Wills','evan@rest.com','Active'),
(3,1,'Frank','Ng','frank@rest.com','Active'),
(1,2,'Grace','Hill','grace@rest.com','Active'),
(2,2,'Henry','Park','henry@rest.com','Active'),
(3,2,'Ivy','Chen','ivy@rest.com','Active'),
(2,2,'Jake','Foster','jake@rest.com','Active');

-- CUSTOMERS
INSERT INTO Customer (FirstName, LastName, Phone, Email) VALUES
('John','Smith','555-1001','john.smith@gmail.com'),
('Sophia','Lee','555-1002','sophia.lee@yahoo.com'),
('Michael','Brown','555-1003','mbrown@gmail.com'),
('Emma','Williams','555-1004','emma.will@hotmail.com'),
('David','Garcia','555-1005','davidg@gmail.com'),
('Olivia','Martinez','555-1006','olivia.m@yahoo.com'),
('Noah','Lopez','555-1007','noah.lopez@gmail.com'),
('Ava','Hernandez','555-1008','ava_h@hotmail.com'),
('Liam','Wilson','555-1009','liam.w@gmail.com'),
('Mia','Anderson','555-1010','mia.a@gmail.com'),
('Lucas','Thomas','555-1011','lucast@gmail.com'),
('Isabella','Taylor','555-1012','izzyt@gmail.com'),
('Ethan','Moore','555-1013','ethanmo@gmail.com'),
('Amelia','Jackson','555-1014','ameliaj@hotmail.com'),
('James','Martin','555-1015','jamesm@gmail.com'),
('Harper','Lee','555-1016','harperlee@yahoo.com'),
('Benjamin','Perez','555-1017','benp@gmail.com'),
('Evelyn','White','555-1018','evewhite@gmail.com'),
('Logan','Harris','555-1019','loganh@gmail.com'),
('Lily','Sanchez','555-1020','lilys@gmail.com');

-- TABLEINFO
INSERT INTO TableInfo (BranchID, Section, Capacity, Status) VALUES
(1,'A',2,'Available'),
(1,'A',4,'Available'),
(1,'A',4,'Occupied'),
(1,'B',6,'Available'),
(1,'B',6,'Occupied'),
(1,'C',8,'Available'),
(2,'A',2,'Available'),
(2,'A',4,'Available'),
(2,'B',4,'Occupied'),
(2,'B',6,'Available'),
(2,'C',8,'Available'),
(2,'C',6,'Available');

-- VISITS
INSERT INTO Visit (CustomerID, BranchID, TableID, TimeCreated, PartySize, VisitType) VALUES
(1,1,NULL,NOW(),3,'Walk-in'),
(2,1,1,NOW(),2,'Reservation'),
(3,1,2,NOW(),4,'Walk-in'),
(4,1,NULL,NOW(),5,'Walk-in'),
(5,1,3,NOW(),2,'Reservation'),
(6,1,NULL,NOW(),3,'Walk-in'),
(7,1,4,NOW(),6,'Reservation'),
(8,2,7,NOW(),2,'Walk-in'),
(9,2,NULL,NOW(),4,'Walk-in'),
(10,2,8,NOW(),2,'Reservation'),
(11,2,NULL,NOW(),3,'Walk-in'),
(12,2,9,NOW(),4,'Walk-in'),
(13,1,5,NOW(),2,'Reservation'),
(14,1,NULL,NOW(),3,'Walk-in'),
(15,2,10,NOW(),6,'Reservation');

-- WAITLIST
INSERT INTO Waitlist (VisitID, Quoted_wait_time, Status) VALUES
(1,15,'Waiting'),
(4,25,'Waiting'),
(6,20,'Waiting'),
(9,30,'Waiting'),
(11,10,'Waiting');

-- RESERVATIONS
INSERT INTO Reservation (VisitID, Reserved_time) VALUES
(2,DATE_ADD(NOW(), INTERVAL 30 MINUTE)),
(5,DATE_ADD(NOW(), INTERVAL 1 HOUR)),
(7,DATE_ADD(NOW(), INTERVAL 2 HOUR)),
(10,DATE_ADD(NOW(), INTERVAL 3 HOUR)),
(13,DATE_ADD(NOW(), INTERVAL 90 MINUTE)),
(15,DATE_ADD(NOW(), INTERVAL 4 HOUR));

-- ORDERS
INSERT INTO Orders (VisitID, EmployeeID, OrderStatus, SubTotal, TaxAmount, TotalDue) VALUES
(2,2,'Closed',40.00,4.00,44.00),
(3,2,'Open',28.00,2.80,30.80),
(5,1,'Closed',60.00,6.00,66.00),
(7,4,'Open',90.00,9.00,99.00),
(8,8,'Closed',25.00,2.50,27.50),
(10,7,'Open',42.00,4.20,46.20),
(12,9,'Closed',33.00,3.30,36.30),
(13,3,'Open',55.00,5.50,60.50),
(14,2,'Open',22.00,2.20,24.20),
(15,8,'Closed',80.00,8.00,88.00);

-- ORDER ITEMS
INSERT INTO OrderItem (OrderID, Quantity, UnitPriceSnapshot, TaxAmountSnapshot) VALUES
(1,2,10.00,1.00),(1,1,20.00,2.00),
(2,1,15.00,1.50),(2,3,5.00,0.50),
(3,2,25.00,2.50),
(4,3,30.00,3.00),(4,1,20.00,2.00),
(5,1,12.00,1.20),(5,2,8.00,0.80),
(6,2,18.00,1.80),(6,1,6.00,0.60),
(7,3,11.00,1.10),
(8,2,13.00,1.30),(8,1,7.00,0.70),
(9,2,19.00,1.90),(9,1,17.00,1.70),
(10,4,12.00,1.20);

-- PAYMENTS
INSERT INTO Payment (OrderID, Amount, Tip, PaymentMethod, Status) VALUES
(1,44.00,5.00,'Credit Card','Completed'),
(3,66.00,8.00,'Cash','Completed'),
(5,27.50,3.00,'Credit Card','Completed'),
(7,36.30,4.00,'Credit Card','Completed'),
(8,60.50,6.00,'Cash','Completed'),
(10,88.00,10.00,'Credit Card','Completed');
