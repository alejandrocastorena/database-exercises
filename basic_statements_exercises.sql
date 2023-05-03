USE albums_db;

DESCRIBE albums;

SELECT *
FROM albums;
-- the id column
-- column name represents the name of the album
-- number of millions copies sold

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';
-- The wall and dark side of the moon

SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";
-- 1967

SELECT genre
FROM albums 
WHERE name = 'Nevermind';
-- grunge/ alternative rock

SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;
-- bodyguard, jagged little pill, come on over,
-- falling into you, lets talk about love, dangerous, immaculate collection
-- titanic, metallica, nevermind, supernatural

SELECT name 
FROM albums
WHERE sales < 19.99;
