CREATE VIEW vista_ultimas_2_ejecuciones
AS
SELECT TOP 2 *
FROM ejecucion
ORDER BY id_ejecucion DESC;
GO