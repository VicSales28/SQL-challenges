-- Utilizando o INNER JOIN, faça uma busca que retorne 
-- o número de vendas para cada filme que possui um número 
-- maior de vendas internacionais (international_sales) do 
-- que vendas nacionais (domestic_sales).
USE pixar;
SELECT
m.title,
b.domestic_sales,
b.international_sales,
(b.domestic_sales + b.international_sales) AS 'sales'
FROM box_office AS b
INNER JOIN movies AS m
ON b.movie_id=m.id
WHERE b.international_sales > b.domestic_sales;