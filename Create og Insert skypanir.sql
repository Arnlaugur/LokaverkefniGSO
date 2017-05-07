
CREATE TABLE Membership
(
  Mem_Num INT NOT NULL,
  Mem_Fname VARCHAR(255),
  Mem_Lname VARCHAR(255),
  Mem_Street VARCHAR(255),
  Mem_City VARCHAR(255),
  Mem_State VARCHAR(255),
  Mem_Zip INT(5),
  Mem_Balance INT,
  PRIMARY KEY (Mem_Num) 
);

CREATE TABLE Rental 
( 
  Rent_Num INT NOT NULL,
  Rent_Date VARCHAR(255),
  Mem_Num INT,
  PRIMARY KEY(Rent_Num),
  FOREIGN KEY (Mem_Num) REFERENCES Membership(Mem_Num)
);

CREATE TABLE Price 
( 
  Price_Code INT NOT NULL,
  Price_Description VARCHAR(255),
  Price_RentFee DOUBLE,
  Price_DailyLateFee DOUBLE,
  PRIMARY KEY (Price_Code) 
);

CREATE TABLE Movie 
( 
  Movie_Num INT NOT NULL,
  Movie_Title VARCHAR(255),
  Movie_Year YEAR,
  Movie_Cost DOUBLE,
  Movie_Genre VARCHAR(255),
  Price_Code INT,
  PRIMARY KEY (Movie_Num),
  FOREIGN KEY (Price_Code) REFERENCES Price(Price_Code)
);

CREATE TABLE Video
( 
  Vid_Num INT NOT NULL,
  Vid_InDate VARCHAR(255),
  Movie_Num INT,
  PRIMARY KEY (Vid_Num),
  FOREIGN KEY (Movie_Num) REFERENCES Movie(Movie_Num)
);

CREATE TABLE DetailRental 
( 
 Rent_Num INT NOT NULL,
 Vid_Num INT NOT NULL,
 Detail_Fee DOUBLE,
 Detail_DueDate VARCHAR(255),
 Detail_ReturnDate VARCHAR(255),
 Detail_DailyLateFee DOUBLE,
 PRIMARY KEY (Vid_Num, Rent_Num),
 FOREIGN KEY (Rent_Num) REFERENCES Rental(Rent_Num),
 FOREIGN KEY (Vid_Num) REFERENCES Video(Vid_Num)
);


INSERT INTO Membership (Mem_Num, Mem_Fname, Mem_Lname, Mem_Street, Mem_City, Mem_State, Mem_Zip, Mem_Balance)
VALUES (102, 'Tami', 'Dawson', '2632 Takli Circle', 'Norene', 'TN', 37136, 11),
(103, 'Curt', 'Knight', '4025 Cornell Court', 'Flatgap', 'KY', 41219, 6),
(104, 'Jamal', 'Melendez', '788 East 145th Avenue', 'Quebeck', 'TN', 38579, 0),
(105, 'Iva', 'Mcclain', '6045 Musket Ball Circle', 'Summit', 'KY', 42783, 15),
(106, 'Miranda', 'Parks', '4469 Maxwell Place', 'Germantown', 'TN', 38183, 0),
(107, 'Rosario', 'Elliott', '7578 Danner Avenue', 'Columbia', 'TN', 38402, 5),
(108, 'Mattie', 'Guy', '4390 Evergreen Street', 'Lily', 'KY', 40740, 0),
(109, 'Clint', 'Ochoa', '1711 ELm Street', 'Greeneville', 'TN', 37745, 10),
(110, 'Lewis', 'Rosales', '4524 Southwind Circle', 'Counce', 'TN', 38326, 0),
(111, 'Stacy', 'Mann', '2789 East Cook Avenue', 'Murfreesboro', 'TN', 37132, 8),
(112, 'Luis', 'Trujillo', '7267 Melvin Avenue', 'Heiskell', 'TN', 37754, 3),
(113, 'Minnie', 'Gonzales', '6430 Vasili Drive', 'Williston', 'TN', 38076, 0);

INSERT INTO Rental (Rent_Num, Rent_Date, Mem_Num)
VALUES (1001, '01-MAR-09', 103),
(1002, '01-MAR-09', 105),
(1003, '02-MAR-09', 102),
(1004, '02-MAR-09', 110),
(1005, '02-MAR-09', 111),
(1006, '02-MAR-09', 107),
(1007, '02-MAR-09', 104),
(1008,'03-MAR-09', 105),
(1009, '03-MAR-09', 111);

INSERT INTO Video (Vid_Num, Vid_InDate, Movie_Num)
VALUES (54321, '18-JUN-08', 1234),
(54324, '18-JUN-08', 1234),
(54325, '18-JUN-08', 1234),
(34341, '22-JAN-07', 1235),
(34342, '22-JAN-07', 1235),
(34366, '02-MAR-09', 1236),
(34367, '02-MAR-09', 1236), 
(54368, '02-MAR-09', 1236),
(54369, '02-MAR-09', 1236),
(44392, '21-OCT-08', 1237), 
(44397, '21-OCT-08', 1237),
(59237, '14-FEB-09', 1237),
(61388, '25-JAN-07', 1239),
(61353, '28-JAN-06', 1245),
(61354, '28-JAN-06', 1245),
(61367, '30-JUL-08', 1246),
(61369, '30-JUL-08', 1246);

INSERT INTO Movie (Movie_Num, Movie_Title, Movie_Year, Movie_Cost, Movie_Genre, Price_Code)
VALUES (1234, 'The Cesar Family Christmas', 2007, 39.95, 'FAMILY', 2),
(1235, 'Smokey Mountain Wildlife', 2004, 59.95, 'ACTION', 1),
(1236, 'Richard Goodhope', 2008, 59.95, 'DRAMA', 2),
(1237, 'Beatnik Fever', 2007, 29.95, 'COMEDY', 2),
(1238, 'Constant Companion', 2008, 89.95, 'DRAMA', 2),
(1239, 'Where Hope Dies', 1998, 25.49, 'DRAMA', 3),
(1245, 'Time to Burn', 2005, 45.49, 'ACTION', 1),
(1246, 'What He Doesn't Know', 2006, 58.29, 'COMEDY', 1);

INSERT INTO Price (Price_Code, Price_Description, Price_RentFee, Price_DailyLateFee)
VALUES (1, 'Standard', 2, 1),
(2, 'New Release', 3.5, 3),
(3, 'Discount', 1.5, 1),
(4, 'Weekly Spcecial', 1, 0.5);

INSERT INTO DetailRental (Rent_Num, Vid_Num, Detail_Fee, Detail_DueDate, Detail_ReturnDate, Detail_DailyLateFee)
VALUES (1, 1, 7, 5.5, 6, 2.5),
(2, 2, 9, 5, 8.5, 9),
(3, 3, 5, 3, 1.5, 7.5),
(4, 4, 9.5, 3, 6, 8),
(5, 5, 8, 4, 10, 6);
