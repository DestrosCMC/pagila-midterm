/*
 * List the titles of all films in the 'Children' category that have a rating of 'R' or 'NC-17'.
 *
 * NOTE:
 * Your results should not contain any duplicate titles.
 */
SELECT title --, rating
FROM film
WHERE title IN (
SELECT title
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
WHERE name = 'Children'
)
AND
rating IN ('R', 'NC-17')
ORDER BY title;
