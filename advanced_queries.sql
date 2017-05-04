-- ADVANCED / JOIN QUERIES

-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause




-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name LIKE 'George%';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name LIKE 'Milan%';

-- Find all books written by an author from China or the UK.
SELECT title FROM authors JOIN books ON (authors.id = books.author_id) WHERE nationality LIKE 'China' OR nationality LIKE 'United King%';
-- Find out how many books Albert Camus wrote.
SELECT title FROM authors JOIN books ON (authors.id = books.author_id) WHERE name LIKE 'Albert C%';
-- Find out how many books written before 1980 were by authors not from the US.
SELECT title FROM authors JOIN books ON (authors.id = books.author_id) WHERE nationality != 'United States of America' AND publication_date<1980;
-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT name FROM authors WHERE name LIKE 'J%';
-- Find all books whose titles contain 'the'.
SELECT title FROM books WHERE title LIKE '%the%';