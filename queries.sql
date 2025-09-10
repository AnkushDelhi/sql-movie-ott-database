-- 1) Find the top 5 highest-rated movies.
select m.title as movies_title,
r.rating 
from movies m 
join ratings r on m.movie_id = r.movie_id
order by r.rating desc
limit 5;

-- 2) List all movies with their genres.
select m.title,
g.genre_name
from movies m 
join genres g on m.genre_id = g.genre_id;


-- 3) Show the actors who acted in a specific movie (e.g., Inception).
select a.name,
m.title 
from actors a 
join movie_actors ma on a.actor_id = ma.actor_id
join movies m on ma.movie_id = m.movie_id
where m.title = 'inception';

-- 4) Count the number of movies in each genre.
select g.genre_name , 
count(*) as movie_count
from movies m 
join genres g on m.genre_id = g.genre_id
group by m.genre_id;

-- 5) Find all users with Premium subscription plans.
select u.name,
s.plan
from users u 
 join subscriptions s on u.user_id = s.user_id
where s.plan = 'premium';


-- 6) Calculate the average rating for each genre.
select g.genre_name,
avg(r.rating) as avg_rating
from movies m 
join genres g on m.genre_id = g.genre_id
join ratings r on m.movie_id = r.movie_id
group by g.genre_name;

-- 7) Identify the most active user (who gave the most ratings).
select u.name,
count(r.rating) as total_rating from users u
join ratings r on u.user_id = r.user_id
group by u.name
order by total_rating desc
limit 1;


-- 8) List all movies released after 2015.
select title,
release_year from movies
where release_year > 2015;

-- 9) Find the subscriptions expiring in the current month.
select u.name,s.end_date
from users u 
join subscriptions s on u.user_id = s.user_id
where month(s.end_date) = month(curdate())
and year(s.end_date) = year(curdate());

-- 10 ) Get the highest-rated movie in each genre.
SELECT g.genre_name, m.title, AVG(r.rating) AS avg_rating
FROM Movies m
JOIN Genres g ON m.genre_id = g.genre_id
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY g.genre_name, m.title
order by avg_rating desc;

-- 11) Count how many movies each actor worked in.
select a.name, count(ma.movie_id) as movie_count
from actors a 
join movie_actors ma on a.actor_id = ma.actor_id
group by a.name;


-- 12) Find the top 3 users who rated the most movies.
select u.name,
count(r.rating_id) as total_rated_movies
from users u
join ratings r on u.user_id = r.user_id
group by u.name
order by total_rated_movies desc
limit 3;

-- 13) Calculate the average subscription duration per plan.
SELECT plan, AVG(DATEDIFF(end_date, start_date)) AS avg_days
FROM Subscriptions
GROUP BY plan;

-- 14) List all movies that have no ratings.
SELECT m.title
FROM Movies m
LEFT JOIN Ratings r ON m.movie_id = r.movie_id
WHERE r.rating_id IS NULL;


-- 15) Find the top 5 most popular actors (based on ratings given to their movies).
SELECT a.name, COUNT(r.rating_id) AS total_rated_movies
FROM Actors a
JOIN Movie_Actors ma ON a.actor_id = ma.actor_id
JOIN Ratings r ON ma.movie_id = r.movie_id
GROUP BY a.name
ORDER BY total_rated_movies DESC
LIMIT 5;