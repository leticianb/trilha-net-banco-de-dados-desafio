--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT COUNT(*) Quantidade, Ano FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT Nome, Genero from Filmes --inner join junta duas tabelas tabela1 inner join tabela 2 onde(on) condição de igualdade where condicao
inner join generos on Filmes.Id = Generos.Id

--11
SELECT Nome, Genero FROM Filmes --inner join junta duas tabelas tabela1 inner join tabela 2 onde(on) condição de igualdade where condicao
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes --inner join junta duas tabelas tabela1 inner join tabela 2 onde(on) condição de igualdade where condicao
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id 
JOIN Atores ON Atores.Id= ElencoFilme.IdAtor
