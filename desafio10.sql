DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userid INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result_musics_history INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.play_history
WHERE user_id = userid INTO result_musics_history;
RETURN result_musics_history;
END $$

DELIMITER ;