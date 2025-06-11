CREATE PROCEDURE sp_ActualizarTestSuite (@id_suite INT, @nuevo_nombre NVARCHAR(100), @nueva_descripcion NVARCHAR(255))
AS
BEGIN
UPDATE TestSuite
SET nombre = @nuevo_nombre,
descripcion = @nueva_descripcion
WHERE id_suite = @id_suite;
END;

-----------Para utilizar SP
EXEC sp_ActualizarTestSuite 
  @id_suite = 1, 
  @nuevo_nombre = '',
  @nueva_descripcion = '';