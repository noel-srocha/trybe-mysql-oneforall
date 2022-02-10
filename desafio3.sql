CREATE VIEW historico_reproducao_usuarios AS SELECT
usr.`user` AS usuario,
sgs.song AS nome
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.songs AS sgs
ON ph.user_id = usr.user_id AND ph.song_id = sgs.song_id
ORDER BY usuario, nome;