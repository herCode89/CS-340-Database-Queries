-- Find the actor_id first_name, last_name and total_combined_film_length 
-- of Sci-Fi films for every actor.
-- That is the result should list the actor ids, names of all of the actors(even if an actor has not been in any Sci-Fi films) 
-- and the total length of Sci-Fi films they have been in.
-- Look at the category table to figure out how to filter data for Sci-Fi films.
-- Order your results by the actor_id in descending order.
-- Put query for Q3 here
SELECT acts.actor_id, first_name, last_name, COALESCE(Sci_Fi.sum, 0) AS total_combined_film_length FROM actor acts LEFT JOIN 
(SELECT acts.actor_id AS actor_id, SUM(f.length) AS SUM FROM actor acts INNER JOIN film_actor fa ON acts.actor_id = fa.actor_id INNER JOIN film f ON fa.film_id = f.film_id INNER JOIN film_category fSF ON f.film_id = fSF.film_id
INNER JOIN category cat ON fSF.category_id = cat.category_id WHERE cat.name = 'Sci-Fi' GROUP BY acts.actor_id ORDER BY SUM ASC) AS Sci_Fi ON acts.actor_id = Sci_Fi.actor_id ORDER BY acts.actor_id DESC;


