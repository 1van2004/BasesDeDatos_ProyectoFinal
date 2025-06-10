CREATE TABLE CasoPrueba (
    id_caso INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100),
    descripcion NVARCHAR(255),
    version_actual INT,
    activo BIT DEFAULT 1
);