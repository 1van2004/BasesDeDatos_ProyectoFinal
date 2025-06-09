CREATE PROCEDURE sp_crear_usuario (@nombre NVARCHAR(50), @primer_apellido NVARCHAR(50), @segundo_apellido NVARCHAR(50), @correo NVARCHAR(50))
AS
BEGIN
INSERT INTO usuario (nombre, primer_apellido, segundo_apellido, correo)
VALUES (@nombre, @primer_apellido, @segundo_apellido, @correo);
Select SCOPE_IDENTITY() AS NuevoUsuarioId;
END;