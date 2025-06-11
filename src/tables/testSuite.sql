CREATE TABLE TestSuite (
    id_suite INT PRIMARY KEY IDENTITY (1,1),
    nombre NVARCHAR(100),
    descripcion NVARCHAR(255),
    fecha_creacion DATETIME DEFAULT GETDATE()
);