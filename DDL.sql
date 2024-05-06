CREATE TABLE Users (
    user_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    date_of_birth DATE,
    gender VARCHAR2(10),
    email VARCHAR2(100)
);
CREATE TABLE Artist (
    artist_id NUMBER PRIMARY KEY,
    artist_name VARCHAR2(100),
    gender VARCHAR2(10),
    date_of_birth DATE,
    genre VARCHAR2(50)
);
CREATE TABLE Song (
    song_id NUMBER PRIMARY KEY,
    artist_id NUMBER,
    song_name VARCHAR2(100),
    album VARCHAR2(100),
    release_year NUMBER,
    genre_id NUMBER,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
CREATE TABLE Library (
    library_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    favourite_genre NUMBER,
    favourite_artist NUMBER,
    favourite_song NUMBER,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (favourite_genre) REFERENCES Genre(genre_id),
    FOREIGN KEY (favourite_artist) REFERENCES Artist(artist_id),
    FOREIGN KEY (favourite_song) REFERENCES Song(song_id)
);
CREATE TABLE Song (
    song_id NUMBER PRIMARY KEY,
    artist_id NUMBER,
    song_name VARCHAR2(100),
    album VARCHAR2(100),
    release_year NUMBER,
    genre_id NUMBER,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
CREATE TABLE Artist (
    artist_id NUMBER PRIMARY KEY,
    artist_name VARCHAR2(100),
    gender VARCHAR2(10),
    date_of_birth DATE,
    genre VARCHAR2(50)
);
CREATE TABLE Genre (
    genre_id NUMBER PRIMARY KEY,
    genre_name VARCHAR2(50),
    artist_id NUMBER,
    song_id NUMBER,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id)
);