--1 - Buscar o nome e ano dos filmes

select Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome, Ano from Filmes
order by Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

select Nome, Ano , Duracao from Filmes
where nome like '%futuro%'

--4 - Buscar os filmes lan�ados em 1997

select * from Filmes
where Ano = 1997

--5 - Buscar os filmes lan�ados AP�S o ano 2000

select * from Filmes
where Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select * from Filmes
where Duracao Between 101 and 149
order by Duracao

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, COUNT(*) Quantidade from Filmes
group by Ano
order by Quantidade desc

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

select * from Atores
where Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select * from Atores
where Genero = 'F'
order by PrimeiroNome


--10 - Buscar o nome do filme e o g�nero

select f.Nome,g.Genero from  FilmesGenero fg
inner join Filmes f on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id


--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

select f.Nome,g.Genero from  FilmesGenero fg
inner join Filmes f on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from  ElencoFilme ef
inner join Atores a on ef.IdAtor = a.Id
inner join Filmes f on ef.IdFilme = f.Id
