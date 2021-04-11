1) 
SELECT name 'name', year 'year' FROM movies WHERE year=1995

2)
SELECT COUNT(a.id) FROM actors a 
INNER JOIN roles r ON a.id = r.actor_id
INNER JOIN movies m ON m.id = r.movie_id
WHERE m.name = 'Lost in Translation'


3)
SELECT a.first_name 'first_name', a.last_name 'last_name', m.name 'movie' FROM actors a 
INNER JOIN roles r ON a.id = r.actor_id
INNER JOIN movies m ON m.id = r.movie_id
WHERE m.name = 'Lost in Translation'

4)
SELECT d.first_name, d.last_name, m.name FROM directors d 
INNER JOIN movies_directors md ON d.id = md.director_id 
INNER JOIN movies m ON m.id = md.movie_id
WHERE m.name = 'Fight Club'

5)
SELECT COUNT(m.name) FROM directors d 
INNER JOIN movies_directors md ON d.id = md.director_id 
INNER JOIN movies m ON m.id = md.movie_id
WHERE d.first_name = 'Clint' AND d.last_name='Eastwood'

6)
SELECT m.name, d.first_name, d.last_name FROM directors d 
INNER JOIN movies_directors md ON d.id = md.director_id 
INNER JOIN movies m ON m.id = md.movie_id
WHERE d.first_name = 'Clint' AND d.last_name='Eastwood'

7)
SELECT DISTINCT d.first_name, d.last_name FROM directors d 
INNER JOIN movies_directors md ON d.id = md.director_id 
INNER JOIN movies m ON m.id = md.movie_id
INNER JOIN movies_genres mg ON mg.movie_id = m.id
WHERE mg.genre = 'Horror'

8)
SELECT a.first_name, a.last_name FROM directors d
INNER JOIN movies_directors md ON md.director_id = d.id
INNER JOIN movies m ON m.id = md.movie_id
INNER JOIN roles r ON r.movie_id = m.id
INNER JOIN actors a ON a.id = r.actor_id
WHERE d.first_name='Christopher' AND d.last_name='Nolan'  

