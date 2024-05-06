SELECT * FROM Users;
SELECT * FROM Artist;
SELECT * FROM Song;
SELECT * FROM Genre;


SELECT name, email FROM Users;

SELECT artist_name, genre FROM Artist;

SELECT song_name, album FROM Song;

SELECT genre_name FROM Genre;

SELECT user_id, favourite_song FROM Library;

SELECT song_name FROM Song WHERE release_year = 2003;

SELECT artist_name FROM Artist WHERE gender = 'Female';

SELECT DISTINCT genre_name FROM Genre WHERE artist_id IS NOT NULL;

SELECT name FROM Users WHERE date_of_birth < TO_DATE('1990-01-01', 'YYYY-MM-DD');

SELECT favourite_genre FROM Library;

SELECT song_name FROM Song
UNION
SELECT favourite_song FROM Library;



