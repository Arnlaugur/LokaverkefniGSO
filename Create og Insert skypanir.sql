
CREATE TABLE Membership ( Mem_Num INT NOT NULL AUTO_INCREMENT, Mem_Fname VARCHAR(255), Mem_Lname VARCHAR(255), Mem_Street VARCHAR(255), Mem_City VARCHAR(255), Mem_State VARCHAR(255), Mem_Zip INT(5), Mem_Balance INT, PRIMARY KEY (Mem_Num) );

CREATE TABLE Rental ( Rent_Num INT NOT NULL AUTO_INCREMENT, Rent_Date VARCHAR(255), Mem_Num INT, PRIMARY KEY(Rent_Num), FOREIGN KEY (Mem_Num) REFERENCES Membership(Mem_Num) );

CREATE TABLE Price ( Price_Code INT NOT NULL AUTO_INCREMENT, Price_Description VARCHAR(255), Price_RentFee DOUBLE, Price_DailyLateFee DOUBLE, PRIMARY KEY (Price_Code) );

CREATE TABLE Movie ( Movie_Num INT NOT NULL AUTO_INCREMENT, Movie_Title VARCHAR(255), Movie_Year YEAR, Movie_Cost DOUBLE, Movie_Genre VARCHAR(255), Price_Code INT, PRIMARY KEY (Movie_Num), FOREIGN KEY (Price_Code) REFERENCES Price(Price_Code) );

CREATE TABLE Video ( Vid_Num INT NOT NULL AUTO_INCREMENT, Vid_InDate VARCHAR(255), Movie_Num INT, PRIMARY KEY (Vid_Num), FOREIGN KEY (Movie_Num) REFERENCES Movie(Movie_Num) );

CREATE TABLE DetailRental ( Rent_Num INT NOT NULL, Vid_Num INT NOT NULL, Detail_Fee DOUBLE, Detail_DueDate VARCHAR(255), Detail_ReturnDate VARCHAR(255), Detail_DailyLateFee DOUBLE, PRIMARY KEY (Vid_Num, Rent_Num), FOREIGN KEY (Rent_Num) REFERENCES Rental(Rent_Num), FOREIGN KEY (Vid_Num) REFERENCES Video(Vid_Num) );


INSERT INTO Membership (Mem_Fname, Mem_Lname, Mem_Street, Mem_City, Mem_State, Mem_Zip, Mem_Balance) VALUES ('Tami', 'Dawson', '2632 Takli Circle', 'Norene', 'TN', 37136, 11), ('Curt', 'Knight', '4025 Cornell Court', 'Flatgap', 'KY', 41219, 6), ('Jamal', 'Melendez', '788 East 145th Avenue', 'Quebeck', 'TN', 38579, 0), ('Iva', 'Mcclain', '6045 Musket Ball Circle', 'Summit', 'KY', 42783, 15), ('Miranda', 'Parks', '4469 Maxwell Place', 'Germantown', 'TN', 38183, 0), ('Rosario', 'Elliott', '7578 Danner Avenue', 'Columbia', 'TN', 38402, 5), ('Mattie', 'Guy', '4390 Evergreen Street', 'Lily', 'KY', 40740, 0), ('Clint', 'Ochoa', '1711 ELm Street', 'Greeneville', 'TN', 37745, 10), ('Lewis', 'Rosales', '4524 Southwind Circle', 'Counce', 'TN', 38326, 0), ('Stacy', 'Mann', '2789 East Cook Avenue', 'Murfreesboro', 'TN', 37132, 8), ('Luis', 'Trujillo', '7267 Melvin Avenue', 'Heiskell', 'TN', 37754, 3), ('Minnie', 'Gonzales', '6430 Vasili Drive', 'Williston', 'TN', 38076, 0);

INSERT INTO Rental (Rent_Date) VALUES ('01-MAR-09'), ('01-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('03-MAR-09'), ('03-MAR-09');

INSERT INTO Video (Vid_InDate) VALUES ('18-JUN-08'), ('18-JUN-08'), ('18-JUN-08'), ('22-JAN-07'), ('22-JAN-07'), ('02-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('02-MAR-09'), ('21-OCT-08'), ('21-OCT-08'), ('14-FEB-09'), ('25-JAN-07'), ('28-JAN-06'), ('28-JAN-06'), ('30-JUL-08'), ('30-JUL-08');

INSERT INTO Movie (Movie_Title, Movie_Year, Movie_Cost, Movie_Genre) VALUES ('The Cesar Family Christmas', 2007, 39.95, 'FAMILY'), ('Smokey Mountain Wildlife', 2004, 59.95, 'ACTION'), ('Richard Goodhope', 2008, 59.95, 'DRAMA'), ('Beatnik Fever', 2007, 29.95, 'COMEDY'), ('Constant Companion', 2008, 89.95, 'DRAMA'), ('Where Hope Dies', 1998, 25.49, 'DRAMA'), ('Time to Burn', 2005, 45.49, 'ACTION'), ('What He Doesn't Know', 2006, 58.29, 'COMEDY');

INSERT INTO Price (Price_Description, Price_RentFee, Price_DailyLateFee) VALUES ('Standard', 2, 1), ('New Release', 3.5, 3), ('Discount', 1.5, 1), ('Weekly Spcecial', 1, 0.5);

INSERT INTO DetailRental (Rent_Num, Vid_Num, Detail_Fee, Detail_DueDate, Detail_ReturnDate, Detail_DailyLateFee) VALUES (1, 1, 7, 5.5, 6, 2.5), (2, 2, 9, 5, 8.5, 9), (3, 3, 5, 3, 1.5, 7.5), (4, 4, 9.5, 3, 6, 8), (5, 5, 8, 4, 10, 6);