USE Filmes
SELECT
  [Id],
  [PrimeiroNome],
  [UltimoNome],
  [Genero]
FROM Atores
WHERE Genero = 'M'