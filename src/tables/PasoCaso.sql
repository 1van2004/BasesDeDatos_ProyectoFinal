CREATE TABLE PasoCaso (
    id_paso INT PRIMARY KEY IDENTITY,
    id_caso INT FOREIGN KEY REFERENCES CasoPrueba(id_caso),
    numero_orden INT,
    descripcion NVARCHAR(255),
    prerrequisitos NVARCHAR(255),
    valor_esperado NVARCHAR(255),
);