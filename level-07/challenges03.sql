-- Utilizando o INNER JOIN, faça uma busca que 
-- retorne os filmes e sua avaliação (rating) 
-- em ordem decrescente.
USE pixar;
SELECT
m.title AS 'Title',
b.rating AS 'Rating'
FROM box_office AS b
INNER JOIN movies AS m
ON b.movie_id=m.id
ORDER BY b.rating DESC;