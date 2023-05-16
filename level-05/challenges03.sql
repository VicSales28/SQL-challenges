-- O nome do diretor do filme “Procurando Nemo” está incorreto,
-- ele foi dirigido por Andrew Stanton. 
-- Corrija esse dado utilizando o comando UPDATE.
USE pixar;
SET SQL_SAFE_UPDATES = 0;
UPDATE movies
SET director = 'Andrew Stanton'
WHERE title = 'Procurando Nemo';