-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name,birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
SELECT name FROM authors WHERE birth_year>1900;
-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality LIKE 'United S%';
-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date<1989;
-- Get just the title of all books.
SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT publication_date FROM books WHERE title LIKE 'A Dance%';
-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors VALUES (9,'Alexzander Craytonian', 'Icelandic', 1900);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books VALUES (99, '50 Days in the Saddle', 1966, 9), (100, 'How to Twerk', 1994, 9);
-- Update one of your books to have a new title
UPDATE books SET title='My Milkshake' WHERE title='How to Twerk';
-- Delete your books
DELETE FROM books WHERE title LIKE '50 Days%' OR title LIKE '7 Minutes%';
-- Delete your author entry
DELETE FROM authors WHERE name LIKE 'Alex%';