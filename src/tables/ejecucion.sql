CREATE TABLE Ejecucion (
    id_ejecucion INT PRIMARY KEY IDENTITY,
    id_caso INT FOREIGN KEY REFERENCES CasoPrueba(id_caso),
    id_usuario INT FOREIGN KEY REFERENCES Usuario(id_usuario),
    fecha_ejecucion DATETIME DEFAULT GETDATE(),
    resultado NVARCHAR(50), -- Aprobado, Rechazado, etc.
    comentarios NVARCHAR(255)
);
