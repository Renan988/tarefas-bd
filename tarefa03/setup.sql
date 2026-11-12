
DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE biblioteca;

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    ano_nascimento INT
);

CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    preco DECIMAL(10,2),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    data_emprestimo DATE NOT NULL,
    devolvido BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

DROP USER IF EXISTS 'app_biblioteca'@'%';
CREATE USER 'app_biblioteca'@'%' IDENTIFIED BY 'AppBib2026!';
GRANT SELECT, INSERT, UPDATE, DELETE ON biblioteca.* TO 'app_biblioteca'@'%';

DROP USER IF EXISTS 'consulta'@'%';
CREATE USER 'consulta'@'%' IDENTIFIED BY 'Consulta2026!';
GRANT SELECT ON biblioteca.* TO 'consulta'@'%';

FLUSH PRIVILEGES;

INSERT INTO autores (nome, pais, ano_nascimento) VALUES
('Machado de Assis', 'Brasil', 1839),
('Clarice Lispector', 'Brasil', 1920),
('Gabriel García Márquez', 'Colômbia', 1927),
('Jane Austen', 'Reino Unido', 1775),
('George Orwell', 'Reino Unido', 1903),
('J.R.R. Tolkien', 'Reino Unido', 1892),
('Franz Kafka', 'Áustria-Hungria', 1883),
('Fyodor Dostoevsky', 'Rússia', 1821),
('Virginia Woolf', 'Reino Unido', 1882),
('Isaac Asimov', 'Rússia', 1920),
('Haruki Murakami', 'Japão', 1949),
('Isabel Allende', 'Chile', 1942),
('Edgar Allan Poe', 'Estados Unidos', 1809),
('J.K. Rowling', 'Reino Unido', 1965);

INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
('Dom Casmurro', 1899, 39.90, 1),
('Memórias Póstumas de Brás Cubas', 1881, 35.00, 1),
('Quincas Borba', 1891, 34.90, 1),
('O Alienista', 1882, 24.90, 1),
('A Hora da Estrela', 1977, 29.90, 2),
('A Paixão Segundo G.H.', 1964, 38.00, 2),
('Perto do Coração Selvagem', 1943, 31.90, 2),
('Cem Anos de Solidão', 1967, 49.90, 3),
('O Amor nos Tempos do Cólera', 1985, 54.90, 3),
('Crônica de uma Morte Anunciada', 1981, 42.00, 3),
('Orgulho e Preconceito', 1813, 44.50, 4),
('Razão e Sensibilidade', 1811, 35.50, 4),
('Emma', 1815, 39.00, 4),
('1984', 1949, 44.90, 5),
('A Revolução dos Bichos', 1945, 29.90, 5),
('O Hobbit', 1937, 59.90, 6),
('A Sociedade do Anel', 1954, 69.90, 6),
('As Duas Torres', 1954, 69.90, 6),
('A Metamorfose', 1915, 27.90, 7),
('O Processo', 1925, 41.50, 7),
('Crime e Castigo', 1866, 58.00, 8),
('Os Irmãos Karamázov', 1880, 74.90, 8),
('Mrs. Dalloway', 1925, 36.90, 9),
('Ao Farol', 1927, 33.90, 9),
('Fundação', 1951, 49.90, 10),
('Eu, Robô', 1950, 42.50, 10),
('Norwegian Wood', 1987, 52.00, 11),
('Kafka à Beira-Mar', 2002, 59.00, 11),
('A Casa dos Espíritos', 1982, 48.90, 12),
('Histórias Extraordinárias', 1840, 37.50, 13);