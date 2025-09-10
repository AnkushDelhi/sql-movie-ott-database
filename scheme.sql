
-- USERS
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

-- GENRES
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

-- MOVIES
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(150),
    release_year INT,
    genre_id INT,
    duration INT, -- in minutes
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- ACTORS
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- MOVIE_ACTORS (many-to-many)
CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

-- RATINGS
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating DECIMAL(2,1),
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

-- SUBSCRIPTIONS
CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    user_id INT,
    plan VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
