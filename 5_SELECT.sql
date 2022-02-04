
#количество исполнителей в каждом жанре;

SELECT genre_id, COUNT(performer_id) FROM performersgenres
GROUP BY genre_id
ORDER BY COUNT(performer_id) DESC;

#количество треков, вошедших в альбомы 2019-2020 годов;

SELECT album_id, COUNT(name) FROM tracks
LEFT JOIN albums ON tracks.album_id = albums.id 
WHERE release_date BETWEEN 2010 AND 2020
GROUP BY album_id;

#средняя продолжительность треков по каждому альбому;

SELECT AVG(duration), album_id FROM tracks
GROUP BY album_id
ORDER BY album_id;

#все исполнители, которые не выпустили альбомы в 2020 году;

SELECT performer_id FROM performersalbums
LEFT JOIN albums ON performersalbums.album_id = albums.id
WHERE release_date NOT IN (1969, 1972)
ORDER BY performer_id;

#названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT c.name FROM collection c
JOIN trackscollection tc ON tc.collection_id = c.id
JOIN tracks t ON t.id = tc.track_id
JOIN albums a ON a.id = t.album_id
JOIN performersalbums pa ON pa.album_id = a.id
JOIN performers p ON p.id = performer_id
WHERE p.name = 'Beatles';


#название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.title, COUNT(pg.performer_id) FROM albums a
JOIN performersalbums pa ON pa.album_id = a.id
JOIN performersgenres pg ON pg.performer_id = pa.performer_id
GROUP BY a.title
HAVING COUNT(pg.performer_id) > 1;


#наименование треков, которые не входят в сборники;
SELECT name FROM tracks t
LEFT JOIN trackscollection tc ON tc.track_id = t.id
WHERE collection_id IS NULL;
  

#исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT p.name, MIN(t.duration) FROM performers p
JOIN performersalbums pa ON pa.performer_id = p.id
JOIN tracks t ON t.album_id = pa.album_id
WHERE t.duration = (
	SELECT MIN(t.duration) FROM tracks t
	)
GROUP BY p.name;


#название альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT a.title FROM albums a
JOIN tracks t ON t.album_id = a.id
WHERE t.album_id in (
	SELECT t.album_id FROM tracks t
	GROUP BY t.album_id
	HAVING COUNT(t.id) = (
		SELECT COUNT(t.id) FROM tracks t
		GROUP BY t.album_id
		ORDER BY t.count
		LIMIT 1)
	)
ORDER BY a.title;
