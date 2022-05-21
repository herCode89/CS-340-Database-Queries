-- Find the actor_id, first_name and last_name of all actors who have never been in a Sci-Fi film.
-- Order by the actor_id in ascending order.
-- Put your query for Q4 here
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id NOT IN (SELECT DISTINCT actor_id FROM film_actor WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id=(SELECT category_id FROM category WHERE name='Sci-FI'))) ORDER BY actor_id ASC;