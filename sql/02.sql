/*
 * Count the number of distinct customers who have rented a movie that 'RUSSELL BACALL' has acted in.
 *
 * NOTE:
 * You cannot hard-code Russell Bacall's actor_id.
 * You're where clause must include a condition using the "first_name" and "last_name" fields of the "actor" table.
 */
SELECT COUNT(DISTINCT customer_id)
FROM film
JOIN inventory USING (film_id)
JOIN rental USING (inventory_id)
WHERE title IN (
SELECT title
FROM film
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)
WHERE first_name LIKE 'RUSSELL' AND
last_name LIKE 'BACALL'
);
