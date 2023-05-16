--  Exclua da tabela movies todos os filmes 
-- com menos de 100 minutos de duração.
USE pixar;
SELECT id, length_minutes FROM movies
WHERE length_minutes < 100;
-- primeiro é utilizada essa query para selecionar os ids dos filmes a serem excluídos

DELETE FROM box_office
WHERE movie_id IN (1, 6, 7, 8);

DELETE FROM movies
WHERE length_minutes < 100;