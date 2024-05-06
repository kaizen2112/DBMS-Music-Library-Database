INSERT INTO Users (user_id, name, date_of_birth, gender, email) 
VALUES (1, 'John Doe', TO_DATE('1985-05-25', 'YYYY-MM-DD'), 'Male', 'john.doe@example.com');

INSERT INTO Artist (artist_id, artist_name, gender, date_of_birth, genre) 
VALUES (1, 'Artist One', 'Male', TO_DATE('1978-09-15', 'YYYY-MM-DD'), 'Rock');

INSERT INTO Song (song_id, artist_id, song_name, album, release_year, genre_id) 
VALUES (1, 1, 'Song One', 'Album One', 2005, 1);

INSERT INTO Library (library_id, user_id, favourite_genre, favourite_artist, favourite_song) 
VALUES (1, 1, 1, 1, 1);

UPDATE Users SET email = 'newemail@example.com' WHERE user_id = 1;

DELETE FROM Song WHERE song_id = 1;

UPDATE Artist SET genre = 'Pop' WHERE artist_name = 'Artist One';

INSERT INTO Users (user_id, name, date_of_birth, gender, email) 
VALUES (2, 'Jane Smith', TO_DATE('1990-12-10', 'YYYY-MM-DD'), 'Female', 'jane.smith@example.com');

INSERT INTO Users (user_id, name, date_of_birth, gender, email) 
VALUES (3, 'Michael Johnson', TO_DATE('1982-08-20', 'YYYY-MM-DD'), 'Male', 'michael.johnson@example.com');

INSERT INTO Artist (artist_id, artist_name, gender, date_of_birth, genre) 
VALUES (2, 'Artist Two', 'Female', TO_DATE('1980-04-30', 'YYYY-MM-DD'), 'Pop');

INSERT INTO Artist (artist_id, artist_name, gender, date_of_birth, genre) 
VALUES (3, 'Artist Three', 'Male', TO_DATE('1995-11-05', 'YYYY-MM-DD'), 'Hip Hop');

INSERT INTO Song (song_id, artist_id, song_name, album, release_year, genre_id) 
VALUES (2, 2, 'Song Two', 'Album Two', 2010, 2);

INSERT INTO Song (song_id, artist_id, song_name, album, release_year, genre_id) 
VALUES (3, 3, 'Song Three', 'Album Three', 2020, 3);

INSERT INTO Genre (genre_id, genre_name, artist_id, song_id) 
VALUES (2, 'Pop', 2, 2);

INSERT INTO Genre (genre_id, genre_name, artist_id, song_id) 
VALUES (3, 'Hip Hop', 3, 3);

UPDATE Users SET name = 'Jane Brown' WHERE user_id = 2;

DELETE FROM Artist WHERE artist_id = 3;

UPDATE Song SET album = 'New Album' WHERE song_id = 2;
