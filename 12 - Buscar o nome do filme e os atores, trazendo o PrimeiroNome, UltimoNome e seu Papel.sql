USE Filmes
SELECT
  [Nome],
  [PrimeiroNome],
  [UltimoNome],
  [Papel]
FROM Filmes
INNER JOIN ElencoFilme
  ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
  ON Atores.Id = ElencoFilme.IdAtor