CREATE PROCEDURE sp_crear_casoPrueba (@nombre NVARCHAR(100), @descripcion NVARCHAR(255), @version_actual INT, @activo BIT)
AS
BEGIN
INSERT INTO CasoPrueba (nombre, descripcion, version_actual, activo)
VALUES (@nombre, @descripcion, @version_actual, @activo);
Select SCOPE_IDENTITY() AS NuevoCasodPruebaId;
END;

-----------Para utilizar SP---------------
EXEC sp_crear_casoPrueba
  @nombre = '', 
  @descripcion = '',
  @version_actual = 7,
  @activo = 0;