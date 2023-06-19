USE Filmes
SELECT
  [Nome],
  [Genero]
FROM Filmes
INNER JOIN FilmesGenero
  ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
  ON FilmesGenero.IdGenero = Generos.Id