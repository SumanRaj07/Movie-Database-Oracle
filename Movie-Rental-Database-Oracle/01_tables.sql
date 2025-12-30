CREATE TABLE Users (
    user_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    email VARCHAR2(50)
);

CREATE TABLE Genres (
    genre_id NUMBER PRIMARY KEY,
    genre_name VARCHAR2(30)
);

CREATE TABLE Movies (
    movie_id NUMBER PRIMARY KEY,
    title VARCHAR2(100),
    genre_id NUMBER,
    release_year NUMBER,
    CONSTRAINT fk_genre
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Rentals (
    rental_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    movie_id NUMBER,
    watch_date DATE,
    CONSTRAINT fk_user
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT fk_movie
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Reviews (
    review_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    movie_id NUMBER,
    rating NUMBER,
    review_comment VARCHAR2(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
