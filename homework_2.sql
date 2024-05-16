SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM artist_details;
SELECT * FROM genre;
SELECT * FROM playlist;
SELECT * FROM song;
SELECT * FROM song_lyrics;
SELECT * FROM songs_genres;
SELECT * FROM songs_playlists;

SELECT * FROM artist_details
WHERE date_of_birth < '01.04.1992'

SELECT * FROM artist_details
WHERE country = 'Germany'

SELECT * FROM song
WHERE duration > '4m0s'

SELECT * FROM song
WHERE explicit = true

SELECT * FROM genre
WHERE name ILIKE '%o%'

SELECT * FROM song_lyrics
WHERE lyrics ILIKE '%that%'

SELECT * FROM artist_details
WHERE full_name ILIKE '%e%'
ORDER BY date_of_birth ASC

SELECT * FROM song
WHERE explicit = false
ORDER BY duration ASC

SELECT * FROM album
WHERE name ILIKE '%u%'
ORDER BY rating ASC

SELECT name FROM artist
UNION
SELECT full_name FROM artist_details

SELECT name FROM artist
UNION ALL
SELECT full_name FROM artist_details

SELECT name from artist
INTERSECT
SELECT full_name FROM artist_details

SELECT name,rating
FROM album

SELECT artist.name AS artist_name,artist_details.full_name AS artist_full_name
FROM artist
LEFT JOIN artist_details ON artist.id = artist_details.artist_id;

SELECT song  , song_lyrics 
FROM song_lyrics
LEFT OUTER JOIN song ON song.id = song_lyrics.song_id;

SELECT artist.name AS artist_name , album.name AS album_name
FROM artist
INNER OUTER JOIN album ON album.id = artist.id;

SELECT artist.name AS artist_name, artist_details.spouse_name AS artist_spouse_name
FROM artist
LEFT OUTER JOIN artist_details ON artist.id = artist_details.artist_id;

SELECT artist.name AS artist_name, artist_details.country AS artist_country
FROM artist
LEFT OUTER JOIN artist_details ON artist.id = artist_details.artist_id;

SELECT song.name AS song_name, genre.name AS genre_name
FROM song
LEFT OUTER JOIN songs_genres ON song.id = songs_genres.song_id
LEFT OUTER JOIN genre ON songs_genres.genre_id = genre.id;

SELECT song.name AS song_name , playlist.title AS playlist_title
FROM song
LEFT OUTER JOIN playlists_songs ON song.id = playlists_songs.song_id
LEFT OUTER JOIN playlist ON playlists_songs.playlist_id = playlist.id;

SELECT album.name AS album_name , album.rating , artist.name AS artist_name
FROM album
LEFT OUTER JOIN song ON album.id = song.album_id
LEFT OUTER JOIN artist ON song.artist_id = artist.id
WHERE album.rating > 4 ;

SELECT song.name AS song_name, artist.name AS artist_name
FROM song
LEFT OUTER JOIN artist ON song.artist_id = artist.id
WHERE song.explicit = true;

































