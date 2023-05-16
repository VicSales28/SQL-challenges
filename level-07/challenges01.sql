-- Utilizando o INNER JOIN, encontre as vendas nacionais (domestic_sales) 
-- e internacionais (international_sales) de cada filme.
USE pixar;
SELECT
m.title,
b.domestic_sales,
b.international_sales
FROM box_office AS b
INNER JOIN movies AS m
ON b.movie_id=m.id
GROUP BY movie_id;