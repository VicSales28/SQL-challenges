-- Altere a classificação da tabela box_office
-- para 6.0 de todos os filmes que lucraram menos
-- de 300 milhões no mercado internacional e 
-- mais de 200 milhões no mercado interno.
USE pixar;
UPDATE box_office
SET rating = 6.0
WHERE domestic_sales > 200000000
AND international_sales < 300000000;