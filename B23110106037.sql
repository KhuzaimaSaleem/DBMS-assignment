CREATE TABLE books(
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    year_published INT,
    is_available BOOLEAN,
    price INT,
    publication VARCHAR(100)
);

INSERT INTO books (title, author, year_published, is_available, price, publication) VALUES
('The Exorcist', 'Paulo Coelho', 1988, true, 500, 'HarperOne'),
('Halloween', 'George Orwell', 1949, true, 600, 'Secker & Warburg'),
('A Nightmare on Elm Street', 'Harper Lee', 1960, false, 550, 'J.B. Lippincott & Co.'),
('The Shining', 'Jane Austen', 1813, true, 450, 'T. Egerton'),
('Psycho', 'F. Scott Fitzgerald', 1925, true, 400, 'Charles Scribner''s Sons'),
('It', 'J.K. Rowling', 1997, false, 700, 'Bloomsbury'),
('The Texas Chain Saw Massacre', 'Herman Melville', 1851, true, 600, 'Harper & Brothers'),
('Rosemary''s Baby', 'J.R.R. Tolkien', 1937, true, 800, 'George Allen & Unwin'),
('Poltergeist', 'Aldous Huxley', 1932, true, 620, 'Chatto & Windus'),
('Friday the 13th', 'J.D. Salinger', 1951, false, 480, 'Little, Brown and Company'),
('The Conjuring', 'Markus Zusak', 2005, true, 520, 'Picador'),
('Hereditary', 'George Orwell', 1945, true, 390, 'Secker & Warburg'),
('Get Out', 'Yuval Noah Harari', 2011, false, 950, 'Harvill Secker'),
('The Babadook', 'Cormac McCarthy', 2006, true, 470, 'Alfred A. Knopf'),
('Sinister', 'Dan Brown', 2013, true, 780, 'Doubleday');

SELECT * FROM books WHERE year_published > 2000;

SELECT * FROM books WHERE price < 599
ORDER BY price DESC;

SELECT * FROM books ORDER BY price DESC LIMIT 3;

SELECT * FROM books ORDER BY year_published DESC LIMIT 2 OFFSET 2;

SELECT * FROM books WHERE publication = 'Secker & Warburg' ORDER BY title;
