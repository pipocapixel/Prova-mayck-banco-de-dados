select *from livros;


INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", "C.S. Lewis", "1950", TRUE, "Fantasia", "978-0064471190", "editora HarperCollins", "768", "Inglês");

UPDATE Livros
SET disponivel = FALSE
WHERE ano_publicacao < 2000 ;

UPDATE Livros
SET editora = "Plume books"
WHERE titulo = "1984" ;

DELETE FROM Livros
WHERE idioma = "francês" and ano_publicacao < 1970;

SELECT*FROM Livros
WHERE quantidade_paginas > 500;

SELECT categoria
FROM Livros
GROUP BY categoria;

SELECT*FROM Livros
LIMIT 5;

SELECT AVG(ano_publicacao)
FROM livros;

SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

SELECT * FROM Livros
WHERE titulo LIKE 'a%' and ano_publicacao BETWEEN 1980 and 2000;
