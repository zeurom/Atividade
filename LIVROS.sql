CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE Autores(
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Nacionalidade VARCHAR(255)
);

INSERT INTO Autores (AutorID, Nome, Nacionalidade)
VALUES
    (1, 'Autor1', 'Nacionalidade1'),
    (2, 'Autor2', 'Nacionalidade2'),
    (3, 'Autor3', 'Nacionalidade3');

CREATE TABLE Livros(
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    AnoPublicacao INT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID)
VALUES
    (1, 'Livro1A', 2000, 1),
    (2, 'Livro2A', 2005, 1),
    (3, 'Livro3A', 2010, 1),
    (4, 'Livro4A', 2015, 1),
    (5, 'Livro5A', 2020, 1),
    (6, 'Livro1B', 2000, 2),
    (7, 'Livro2B', 2005, 2),
    (8, 'Livro3B', 2010, 2),
    (9, 'Livro4B', 2015, 2),
    (10, 'Livro5B', 2020, 2),
    (11, 'Livro1C', 2000, 3),
    (12, 'Livro2C', 2005, 3),
    (13, 'Livro3C', 2010, 3),
    (14, 'Livro4C', 2015, 3),
    (15, 'Livro5C', 2020, 3);

SELECT Autores.Nome AS NomeAutor, Livros.Titulo FROM Autores JOIN Livros ON Autores.AutorID = Livros.AutorID;

SELECT Autores.Nome AS NomeAutor, Livros.Titulo FROM Autores INNER JOIN Livros ON Autores.AutorID = Livros.AutorID WHERE Autores.Nome = 'Autor1';

SELECT Autores.Nome AS NomeAutor, Livros.Titulo FROM Autores LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID WHERE Autores.Nacionalidade = 'Nacionalidade2';

SELECT Autores.AutorID, Autores.Nome AS NomeAutor, COUNT(Livros.LivroID) AS QuantidadeLivros FROM Autores LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID GROUP BY Autores.AutorID, Autores.Nome;
