-- O título do filme “Ratatouille” está escrito 
-- de forma incorreta na tabela movies, além disso,
-- o filme foi lançado em 2007 e não em 2010. 
-- Corrija esses dados utilizando o UPDATE.
USE pixar;
UPDATE movies
SET title = 'Ratatouille', year=2007
WHERE title = 'ratatui';