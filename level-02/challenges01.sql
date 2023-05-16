-- Escreva uma query para exibir a peça e o preço de tudo que é provido pela empresa RBT.
USE PiecesProviders;
SELECT 
Piece AS 'Peça',
Price AS 'Preço'
FROM Provides
WHERE Provider='RBT';
