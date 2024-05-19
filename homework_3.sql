SELECT COUNT(*) AS total_song
FROM song

SELECT a.name AS artist_name, COUNT(s.id) AS song_count
FROM artist a 
JOIN song s ON a.id = s.artist_id
GROUP BY a.name
ORDER BY song_count DESC

SELECT a.name AS artist_name,COUNT(s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
JOIN album al ON s.album_id = al.id
WHERE al.id < 100
GROUP BY a.name
ORDER BY song_count DESC

SELECT a.name AS artist_name, MAX(s.duration) AS max_duration, AVG(s.duration) AS avg_duration
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name
ORDER BY a.name

SELECT a.name AS artist_name, COUNT(s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name
HAVING COUNT(s.id) >= 10
ORDER BY song_count DESC

SELECT a.name AS artist_name, COUNT(s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
JOIN album al ON s.album_id = al.id
WHERE al.id < 100
GROUP BY a.name	
HAVING COUNT(s.id) > 10
ORDER BY song_count DESC

SELECT a.name AS artist_name, COUNT(s.id) AS song_count, MAX(s.duration) AS max_duration, AVG(s.duration) AS avg_duration
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name	
HAVING MAX(s.duration) > AVG(s.duration)
ORDER BY artist_name