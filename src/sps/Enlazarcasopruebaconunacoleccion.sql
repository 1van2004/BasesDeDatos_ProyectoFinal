CREATE PRODUCEDURE EnlazarCasoConSuite
@id_suite INT,
@id_caso INT
AS
BEGIN
IF NOT EXISTS (
    SELECT 1 FROM SuiteCaso
    WHERE id_suite = @id_suite AND id_caso = @id_caso
)
BEGIN
INSERT INTO SuiteCaso (id_suite, id_caso)
VALUES (@id_suite, @id_caso);
END
ELSE 
BEGIN
PRINT 'Este caso ya está enlazado con esta suite'.;
END
END;
