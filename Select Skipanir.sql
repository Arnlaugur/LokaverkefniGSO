3.
SELECT Movie_Title, Movie_Year, Movie_Cost
FROM Movie
WHERE Movie_Title LIKE "%hope%";

4.
SELECT Movie_Title, Movie_Year, Movie_Genre
FROM Movie
WHERE Movie_Genre LIKE "ACTION";

5.
SELECT Movie_Num, Movie_Title, Movie_Cost
FROM Movie
WHERE Movie_Cost > 40;

6.
SELECT Movie_Num, Movie_Title, Movie_Cost, Movie_Genre
FROM Movie
WHERE Movie_Cost < 50 AND Movie_Genre LIKE "ACTION" OR Movie_Genre LIKE "COMEDY";

7.
SELECT Movie_Num, CONCAT(Movie_Title,', (',Movie_Year,') ',Movie_Genre) AS Movie_Description
FROM Movie;

8.
SELECT Movie_Genre, COUNT(Movie_Genre) AS Number_Of_Movies
FROM Movie
GROUP BY Movie_Genre;

9.
SELECT Avg(Movie_Cost) 
AS AverageMovieCost 
FROM Movie

10.
SELECT Movie_Genre, AVG(Movie_Genre) AS Average_Cost
FROM Movie
GROUP BY Movie_Genre;

11.
SELECT Movie.Movie_Title, Movie.Movie_Genre,  Price.Price_Description, Price.Price_RENTFEE
FROM Movie
INNER JOIN Price ON Movie.Price_Code = Price.Price_Code;

12.
SELECT Movie.Movie_Genre, AVG(price.Price_Rentfee)
FROM Movie
INNER JOIN price ON Movie.PRICE_CODE = Price.PRICE_CODE
GROUP BY Movie_Genre;

13.
SELECT Movie.Movie_Title, 

15.
SELECT Movie_Title, Movie_Year, Movie_Cost
FROM Movie
WHERE Movie_Cost > 44.99 AND Movie_Cost < 49.99;

24.
ALTER TABLE Detail_Rental
ADD Detail_DaysLate INT(3);

16.
SELECT Movie.Movie_Title, Movie.Movie_Year, Price.Price_Description, Price.Price_RentFee, Movie.Movie_Genre
FROM Price
INNER JOIN Movie ON Price.Price_Code = Movie.Price_Code
WHERE Movie.Movie_Genre =  "FAMILY"
OR Movie.Movie_Genre =  "COMEDY"
OR Movie.Movie_Genre =  "DRAMA";

18.
SELECT CONCAT(Mem_Fname,' ',Mem_Lname) AS Membership_Name, CONCAT(Mem_Street,', ',Mem_City,', ',Mem_State,', ',Mem_Zip) AS Membership_Address
FROM Membership;
