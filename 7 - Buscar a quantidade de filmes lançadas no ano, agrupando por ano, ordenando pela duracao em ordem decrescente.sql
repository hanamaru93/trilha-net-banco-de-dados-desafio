USE Filmes
SELECT
  [Ano],
  COUNT(Ano) AS [Quantidade]
FROM Filmes
GROUP BY [Ano]
ORDER BY [Quantidade] DESC