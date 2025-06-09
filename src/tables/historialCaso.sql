CREATE TABLE historialCaso (
    id_historial INT PRIMARY KEY IDENTITY,
    id_caso INT FOREIGN KEY REFERENCES CasoPrueba(id_caso),
    fecha_version DATETIME DEFAULT GETDATE(),
    descripcion_version NVARCHAR(255),
    numero_version INT
);
go
