CREATE DATABASE music_app_v1;

USE music_app_v1;

INSERT INTO artists (first_name, last_name, date_of_birth)
VALUES ('John', 'Doe', '1985-08-12');

INSERT INTO genres (name)
VALUES ('Rock');

SET @artist_id = LAST_INSERT_ID();
INSERT INTO songs (title, artist_id, duration, explicit, cloud_link)
VALUES ('Example Song', @artist_id, 240, 0, 'https://example.com/song/example_song.mp3');


SELECT id INTO @genre_id
FROM genres
WHERE name = 'Rock';

UPDATE songs
SET genre_id = @genre_id
WHERE id = 1;

Insert INTO users (email, first_name, last_name, password)
Values('thisemail@gmail.com', 'khai', 'tha', 'password');
SET @users_id = LAST_INSERT_ID();


SELECT * FROM artists;
SELECT * FROM genres;
SELECT * FROM users;
SELECT * FROM songs;
SELECT * FROM favorites;
SELECT * FROM playlists;
SELECT * FROM playlist_songs;