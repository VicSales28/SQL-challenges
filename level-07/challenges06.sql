-- Utilizando o INNER JOIN, selecione todas 
-- as informações dos filmes que estão em cartaz 
-- (possuem theater_id diferente de NULL) com 
-- avaliação maior que 8.
USE pixar;
SELECT
m.id,
m.title,
m.director,
m.year,
m.length_minutes,
m.theater_id
FROM movies AS m
INNER JOIN box_office AS b 
ON b.movie_id = m.id
WHERE b.rating > 8 
AND m.theater_id IS NOT NULL;