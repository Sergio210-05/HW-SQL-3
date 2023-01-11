SELECT album_name, year_produced FROM albums
WHERE year_produced = 2018;

SELECT track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE duration >= 3.5 * 60;

SELECT collection_name FROM collections
WHERE year_produced BETWEEN 2018 AND 2020;

SELECT artist_name FROM artists
WHERE artist_name NOT LIKE ('% %');

SELECT track_name FROM tracks
WHERE track_name LIKE ('%my%') OR track_name LIKE ('%My%') OR 
track_name LIKE ('%мой%') OR track_name LIKE ('%Мой%');
