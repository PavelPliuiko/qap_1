SELECT first_name, last_name, COUNT(film.film_id) AS films_count
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE language_id = 1
GROUP BY actor.actor_id
ORDER BY films_count DESC;