DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN art_name VARCHAR(100))
BEGIN
SELECT
arts.artist AS artista,
albs.album
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.albums AS albs
ON arts.artist_id = albs.artist_id
WHERE arts.artist = art_name; 
END $$

DELIMITER ;