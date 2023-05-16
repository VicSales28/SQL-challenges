-- Escreva uma query para exibir por quantas empresas a peça 1 é provida.
USE PiecesProviders;
SELECT 
COUNT(Provider)
FROM Provides
WHERE Piece=1;