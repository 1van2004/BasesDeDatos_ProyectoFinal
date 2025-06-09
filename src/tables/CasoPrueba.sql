CREATE TABLE CasoPrueba (
    id_caso INT PRIMARY KEY IDENTITY,
    nombre NVARCHAR(100),
    descripcion NVARCHAR(255),
    version_actual INT,
    activo BIT DEFAULT 1
);