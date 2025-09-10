INSERT INTO Genres VALUES
(1, 'Action'), (2, 'Comedy'), (3, 'Drama'),
(4, 'Sci-Fi'), (5, 'Romance'), (6, 'Thriller');

-- USERS (just 5 shown, will generate 50+)
INSERT INTO Users VALUES
(1, 'Aman Sharma', 'aman@example.com', '2024-01-05'),
(2, 'Riya Mehta', 'riya@example.com', '2024-02-10'),
(3, 'Arjun Singh', 'arjun@example.com', '2024-02-15'),
(4, 'Neha Verma', 'neha@example.com', '2024-03-01'),
(5, 'Karan Patel', 'karan@example.com', '2024-03-05');

-- MOVIES (just 5 shown, will generate 50+)
INSERT INTO Movies VALUES
(101, 'Inception', 2010, 4, 148),
(102, 'Avengers', 2012, 1, 143),
(103, '3 Idiots', 2009, 2, 171),
(104, 'Interstellar', 2014, 4, 169),
(105, 'The Dark Knight', 2008, 1, 152);

-- ACTORS (just 5 shown, will generate 50+)
INSERT INTO Actors VALUES
(201, 'Leonardo DiCaprio'),
(202, 'Robert Downey Jr.'),
(203, 'Aamir Khan'),
(204, 'Matthew McConaughey'),
(205, 'Christian Bale');

-- MOVIE_ACTORS (sample)
INSERT INTO Movie_Actors VALUES
(101, 201), (102, 202), (103, 203),
(104, 204), (105, 205);

-- RATINGS (just 5 shown, will generate 200+)
INSERT INTO Ratings VALUES
(301, 1, 101, 4.8, '2024-03-01'),
(302, 2, 103, 4.5, '2024-03-02'),
(303, 3, 104, 4.9, '2024-03-05'),
(304, 4, 105, 4.7, '2024-03-07'),
(305, 5, 102, 4.6, '2024-03-10');

-- SUBSCRIPTIONS (just 3 shown, will generate 50+)
INSERT INTO Subscriptions VALUES
(401, 1, 'Premium', '2024-01-05', '2024-07-05'),
(402, 2, 'Basic', '2024-02-10', '2024-08-10'),
(403, 3, 'Standard', '2024-02-15', '2024-08-15');