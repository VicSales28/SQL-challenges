-- Escreva uma query para exibir todas as informações das cinco peças com os maiores preços.
USE PiecesProviders;
SELECT 
Piece AS 'Peça',
Provider AS 'Empresa',
Price AS 'Preço'
FROM Provides
ORDER BY Price DESC
LIMIT 5;