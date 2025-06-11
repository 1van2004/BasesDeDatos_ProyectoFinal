CREATE PROCEDURE GuardarResultadoEjecucion
@id_caso INT,
@id_usuario INT,
@resultado NVARCHAR(50),
@comentarios NVARCHAR(255)
AS
BEGIN
INSERT INTO Ejecucion (id_caso, id_usuario, resultado, comentarios)
VALUES (@id_caso, @id_usuario, @resultado, @comentarios);
END;


-----------Para utilizar SP---------------
EXEC GuardarResultadoEjecucion
  @id_caso = 1, 
  @id_usuario = 1,
  @resultado = '',
  @comentarios = '';