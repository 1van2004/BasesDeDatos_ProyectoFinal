CREATE VIEW vista_ultimas_2_ejecuciones
AS
SELECT TOP 2 *
FROM Ejecucion
ORDER BY id_ejecucion DESC;
GO

--------Para activar en cosola---------- 
SELECT * FROM vista_usuarios_activos;