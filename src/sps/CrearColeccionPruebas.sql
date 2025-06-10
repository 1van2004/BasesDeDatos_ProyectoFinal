CREATE PROCEDURE sp_CrearTestSuite (@nombre NVARCHAR(100), @descripcion NVARCHAR(255))
AS
BEGIN
INSERT INTO TestSuite (nombre,descripcion)
VALUES (@nombre, @descripcion);
END;

