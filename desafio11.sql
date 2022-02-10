CREATE VIEW cancoes_premium AS
SELECT 
sgs.song AS nome,
COUNT(ph.song_id) AS reproducoes
FROM SpotifyClone.songs AS sgs
INNER JOIN SpotifyClone.play_history AS ph 
ON ph.song_id = sgs.song_id
INNER JOIN SpotifyClone.users AS usr
ON usr.user_id = ph.user_id
INNER JOIN SpotifyClone.plans AS pls 
ON pls.plan_id = usr.plan_id
WHERE pls.plan IN('Familiar', 'Universitãrio')
GROUP BY nome
ORDER BY nome;