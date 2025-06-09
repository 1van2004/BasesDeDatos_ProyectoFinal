CREATE TRIGGER tr_crear_historial
ON caso_de_prueba
AFTER INSERT, UPDATE
AS
BEGIN
  INSERT INTO HistorialCaso (id_caso, descripcion_version, numero_version)
  SELECT 
    i.id_caso,
    'Nueva versión del caso: ' + CAST(i.id_caso AS NVARCHAR(10)),
    ISNULL(
      (SELECT MAX(h.numero_version) FROM HistorialCaso h WHERE h.id_caso = i.id_caso), 
      0
    ) + 1
  FROM inserted i;
END;
GO

