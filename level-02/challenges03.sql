-- Escreva uma query para exibir o nome das empresas e
-- o preço das quatro peças com os maiores preços,
-- começando a lista a partir do 3º item.
USE PiecesProviders;
SELECT
DISTINCT
Piece AS 'Peça',
Provider AS 'Empresa',
Price AS 'Preço'
FROM Provides
ORDER BY Price DESC
LIMIT 4
OFFSET 2;