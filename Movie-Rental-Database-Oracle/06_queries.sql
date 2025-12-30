SELECT COUNT(*) FROM Movies;

SELECT * FROM Movies;

SELECT movie_id, title FROM Movies;

SELECT name, title
FROM Users, Rentals, Movies
WHERE Users.user_id = Rentals.user_id
AND Rentals.movie_id = Movies.movie_id;

SELECT title, rating, review_comment
FROM Movies, Reviews
WHERE Movies.movie_id = Reviews.movie_id;
