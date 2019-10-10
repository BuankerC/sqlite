CREATE TABLE friends (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL
);

INSERT INTO friends
VALUES 
(1, 'Justin', 'Seoul'), 
(2, 'Simon', 'New York'), 
(3,'Chang', 'Las Vegas'), 
(4, 'John', 'Sydney');

SELECT * FROM friends;

UPDATE friends SET married=1, location="LA" WHERE id=1;
UPDATE friends SET married=0, WHERE id=2;
UPDATE friends SET married=0, WHERE id=3;
UPDATE friends SET married=1, WHERE id=4;

ALTER TABLE friends
ADD COLUMN married INTEGER;

DROP TABLE friends;