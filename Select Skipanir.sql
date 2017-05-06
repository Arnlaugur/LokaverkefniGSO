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

6.
SELECT Movie_Num, Movie_Title, Movie_Cost, Movie_Genre
FROM Movie 
WHERE Movie_Cost < 50 AND Movie_Genre = "ACTION" OR "COMEDY";

7.
SELECT Movie_Num, CONCAT(Movie_Title,', ',Movie_Year,', ',Movie_Genre) AS Movie_Description
FROM Movie;

8.
SELECT Movie_Genre, COUNT(Movie_Genre) AS Number_Of_Movies
From Movie
GROUP BY Movie_Genre;


9.
SELECT Avg(Movie_Cost) 
AS AverageMovieCost 
FROM Movie

15.
SELECT Movie_Title, Movie_Year, Movie_Cost
FROM Movie
WHERE Movie_Cost > 44.99 AND Movie_Cost < 49.99;

24.
ALTER TABLE Detail_Rental
ADD Detail_DaysLate INT(3);
