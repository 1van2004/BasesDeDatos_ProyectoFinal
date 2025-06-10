CREATE PROCEDURE sp_actualizar_prueba
  @id_caso INT,
  @nombre NVARCHAR(100),
  @descripcion NVARCHAR(255),
  @activo BIT
AS
BEGIN
  IF EXISTS (SELECT 1 FROM CasoPrueba WHERE id_caso = @id_caso)
  BEGIN
    UPDATE CasoPrueba
    SET 
      nombre = @nombre,
      descripcion = @descripcion,
      version_actual = version_actual + 1,
      activo = @activo
    WHERE id_caso = @id_caso;

    SELECT 'Caso actualizado correctamente' AS mensaje;
  END
  ELSE
  BEGIN
    SELECT 'El caso no existe' AS mensaje;
  END
END;
GO