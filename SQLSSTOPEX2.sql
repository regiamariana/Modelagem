CREATE DATABASE Sstop;

USE Sstop;

-- DDL
CREATE TABLE Estilo
(
    IdEstilo    INT PRIMARY KEY IDENTITY
    ,Nome       VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Artista
(
    IdArtista     INT PRIMARY KEY IDENTITY
    ,Nome	  VARCHAR(200) UNIQUE
    ,IdEstilo     INT FOREIGN KEY REFERENCES Estilo (IdEstilo)
);

-- DML
INSERT INTO Estilo (Nome) VALUES ('Folk');
INSERT INTO Estilo VALUES ('Rock'), ('Pop');

INSERT INTO Artista (Nome) VALUES ('Madonna');

UPDATE Estilo SET Nome = 'POp' WHERE IdEstilo = 2;
UPDATE Artista SET Nome = 'Madonna' WHERE IdArtista = 1;

DELETE FROM Estilo WHERE IdEstilo = 2;
DELETE FROM Artista WHERE IdArtista = 1;

-- DQL
SELECT * FROM Estilo;


SELECT * FROM Estilo
WHERE Nome = 'pop';

SELECT * FROM Estilo
WHERE Nome LIKE 'PO%';

SELECT * FROM Estilo
WHERE Nome LIKE '%o%';


SELECT *
FROM Artista
LEFT JOIN Estilo
ON Artista.IdEstilo = Estilo.IdEstilo

-- LEFT!!!!!!!!!!

select * from artista

insert into artista values ('mj', 1)
insert into artista values ('madonna')
insert into Estilo valueS ('Rock')

SELECT *
FROM Artista
FULL JOIN Estilo
ON Artista.IdEstilo = Estilo.IdEstilo