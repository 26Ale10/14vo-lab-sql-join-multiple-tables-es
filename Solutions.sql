USE SAKILA;

-- 1. Escribe una consulta para mostrar para cada tienda su ID de tienda, ciudad y país.
SELECT 
	T1.store_id,
    T3.city,
    T4.country
from store as T1
LEFT JOIN
	address as T2 ON T1.address_id = T2.address_id
LEFT JOIN
	city as T3 ON T2.city_id = T3.city_id
LEFT JOIN 
	country as T4 ON T3.country_id = t4.country_id
;

-- 2. Escribe una consulta para mostrar cuánto negocio, en dólares, trajo cada tienda.

SELECT 
    T1.store_id, SUM(T4.amount) AS 'Total Bussines'
FROM
    store AS T1
        JOIN
    inventory AS T2 ON T2.store_id = T1.store_id
        JOIN
    rental AS T3 ON T3.inventory_id = T2.inventory_id
        JOIN
    payment AS T4 ON T4.rental_id = T3.rental_id
GROUP BY T1.store_id
ORDER BY T1.store_id DESC
;

-- 3. ¿Cuál es el tiempo de ejecución promedio de las películas por categoría?

select T1.name, AVG(T3.length) AS Duración_Promedio  from category as T1

JOIN film_category AS T2 ON T2.category_id = T1.category_id
JOIN film AS T3 ON T3.film_id = T2.film_id

GROUP BY T1.name
ORDER BY Duración_Promedio desc
;

-- 4. ¿Qué categorías de películas son las más largas?
select T1.name, max(T3.length) AS Duración_Maxima  from category as T1

JOIN film_category AS T2 ON T2.category_id = T1.category_id
JOIN film AS T3 ON T3.film_id = T2.film_id

GROUP BY T1.name
ORDER BY Duración_Maxima desc
;

-- 5. Muestra las películas más alquiladas en orden descendente.

-- 6. Enumera los cinco principales géneros en ingresos brutos en orden descendente.
-- 7. ¿Está "Academy Dinosaur" disponible para alquilar en la Tienda 1?











