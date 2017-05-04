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

8.
SELECT Movie_Genre, COUNT(Movie_Genre) AS Number_Of_Movies
From Movie
GROUP BY Movie_Genre;