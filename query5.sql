-- Find the film_title of all films which feature both KIRSTEN PALTROW and WARREN NOLTE
-- Order the results by film_title in descending order.
SELECT title AS 'film_title' FROM(SELECT film.title, COUNT(actor.first_name) AS name_count FROM film JOIN film_actor ON 
film.film_id = film_actor.film_id JOIN actor ON film_actor.actor_id = actor.actor_id WHERE CONCAT(actor.first_name,'', actor.last_name)
IN ('KIRSTEN' 'PALTROW','','WARREN' 'NOLTE') GROUP BY title ORDER BY title DESC)
A WHERE name_count = 2;








