USE biblioteca;

-- 1. Inserção de 10 novos autores (IDs de 5 a 14)
INSERT INTO autores (nome, pais, ano_nascimento) VALUES
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

-- 2. Inserção de 25 livros variados associados aos autores (IDs 1 a 14)
INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
-- Livros para Machado de Assis (autor_id: 1)
('Quincas Borba', 1891, 34.90, 1),
('O Alienista', 1882, 24.90, 1),

-- Livros para Clarice Lispector (autor_id: 2)
('A Paixão Segundo G.H.', 1964, 38.00, 2),
('Perto do Coração Selvagem', 1943, 31.90, 2),

-- Livros para Gabriel García Márquez (autor_id: 3)
('O Amor nos Tempos do Cólera', 1985, 54.90, 3),
('Crônica de uma Morte Anunciada', 1981, 42.00, 3),

-- Livros para Jane Austen (autor_id: 4)
('Razão e Sensibilidade', 1811, 35.50, 4),
('Emma', 1815, 39.00, 4),

-- Livros para George Orwell (autor_id: 5)
('1984', 1949, 44.90, 5),
('A Revolução dos Bichos', 1945, 29.90, 5),

-- Livros para J.R.R. Tolkien (autor_id: 6)
('O Hobbit', 1937, 59.90, 6),
('A Sociedade do Anel', 1954, 69.90, 6),
('As Duas Torres', 1954, 69.90, 6),

-- Livros para Franz Kafka (autor_id: 7)
('A Metamorfose', 1915, 27.90, 7),
('O Processo', 1925, 41.50, 7),

-- Livros para Fyodor Dostoevsky (autor_id: 8)
('Crime e Castigo', 1866, 58.00, 8),
('Os Irmãos Karamázov', 1880, 74.90, 8),

-- Livros para Virginia Woolf (autor_id: 9)
('Mrs. Dalloway', 1925, 36.90, 9),
('Ao Farol', 1927, 33.90, 9),

-- Livros para Isaac Asimov (autor_id: 10)
('Fundação', 1951, 49.90, 10),
('Eu, Robô', 1950, 42.50, 10),

-- Livros para Haruki Murakami (autor_id: 11)
('Norwegian Wood', 1987, 52.00, 11),
('Kafka à Beira-Mar', 2002, 59.00, 11),

-- Livro para Isabel Allende (autor_id: 12)
('A Casa dos Espíritos', 1982, 48.90, 12),

-- Livro para Edgar Allan Poe (autor_id: 13)
('Histórias Extraordinárias', 1840, 37.50, 13),

-- Livro para J.K. Rowling (autor_id: 14)
('Harry Potter e a Pedra Filosofal', 1997, 45.00, 14);  