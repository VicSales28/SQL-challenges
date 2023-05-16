-- Exclua da tabela movies todos os filmes dirigidos por “Andrew Stanton”.
SELECT id FROM movies
WHERE director = 'Andrew Stanton';
-- primeiro é utilizada essa query para selecionar os ids dos filmes a serem excluídos (2 e 9)

DELETE FROM box_office
WHERE movie_id IN (2, 9);

DELETE FROM movies
WHERE director = 'Andrew Stanton';