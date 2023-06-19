/*========================================*/
/*#--------------------------------------#*/
/*|==DIO - Trilha .NET - Banco de Dados==|*/
/*|====Script Único e Com Comentarios====|*/
/*|========= By Felipe Barbosa ==========|*/
/*#--------------------------------------#*/
/*========================================*/


/*========================================*/
/*#--------------------------------------#*/
/*|  1 - Buscar o nome e ano dos filmes  |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano]
FROM Filmes


/*========================================*/
/*#--------------------------------------#*/
/*|  2 - Buscar o nome e ano dos filmes, |*/
/*|  ordenados por ordem crescente pelo	 |*/
/*|	 ano.								 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano]
FROM Filmes
ORDER BY [Ano] ASC


/*========================================*/
/*#--------------------------------------#*/
/*|  3 - Buscar pelo filme de volta		 |*/
/*|	 para o futuro, trazendo o nome,	 |*/
/*|	 ano e a duração.					 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano],
  [Duracao]
FROM Filmes
WHERE Nome = 'De Volta Para O Futuro'


/*========================================*/
/*#--------------------------------------#*/
/*|  4 - Buscar os filmes lançados		 |*/
/*|  em 1997.							 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano],
  [Duracao]
FROM Filmes
WHERE Ano = '1997'


/*========================================*/
/*#--------------------------------------#*/
/*|  5 - Buscar os filmes lançados		 |*/
/*|  APÓS o ano 2000					 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano],
  [Duracao]
FROM Filmes
WHERE ANO > 2000


/*========================================*/
/*#--------------------------------------#*/
/*|  6 - Buscar os filmes com a duracao  |*/
/*|	 maior que 100 e menor que 150,      |*/
/*|	 ordenando pela duracao em ordem     |*/
/*|	 crescente.                          |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Ano],
  [Duracao]
FROM Filmes
WHERE [Duracao] > 100
AND [Duracao] < 150
ORDER BY [Duracao] ASC


/*========================================*/
/*#--------------------------------------#*/
/*|  7 - Buscar a quantidade de filmes	 |*/
/*|	 lançadas no ano, agrupando por ano, |*/
/*|	 ordenando pela duracao em ordem     |*/
/*|	 decrescente.						 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Ano],
  COUNT(Ano) AS [Quantidade]
FROM Filmes
GROUP BY [Ano]
ORDER BY [Quantidade] DESC


/*========================================*/
/*#--------------------------------------#*/
/*|  8 - Buscar os Atores do gênero		 |*/
/*|	 masculino, retornando o			 |*/ 
/*|	 PrimeiroNome, UltimoNome.			 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Id],
  [PrimeiroNome],
  [UltimoNome],
  [Genero]
FROM Atores
WHERE Genero = 'M'


/*========================================*/
/*#--------------------------------------#*/
/*|  9 - Buscar os Atores do gênero		 |*/
/*|	 feminino, retornando o PrimeiroNome,|*/ 
/*|	 UltimoNome, e ordenando pelo	     |*/
/*|	 PrimeiroNome.						 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Id],
  [PrimeiroNome],
  [UltimoNome],
  [Genero]
FROM Atores
WHERE Genero = 'F'
ORDER BY [PrimeiroNome]


/*========================================*/
/*#--------------------------------------#*/
/*|  10 - Buscar o nome do filme e o	 |*/
/*|	 gênero.							 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Genero]
FROM Filmes
INNER JOIN FilmesGenero
  ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
  ON FilmesGenero.IdGenero = Generos.Id


/*========================================*/
/*#--------------------------------------#*/
/*|  11 - Buscar o nome do filme e o	 |*/
/*|	 gênero do tipo "Mistério"			 |*/
/*#--------------------------------------#*/


USE Filmes
SELECT
  [Nome],
  [Genero]
FROM Filmes
INNER JOIN FilmesGenero
  ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
  ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

/*========================================*/
/*#--------------------------------------#*/
/*|  12 - Buscar o nome do filme e os    |*/
/*|  atores, trazendo o PrimeiroNome,	 |*/
/*|	 UltimoNome e seu Papel.              |*/
/*#--------------------------------------#*/


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



/*==========FIM DO SCRIPT===============*/
