CREATE TABLE SuiteCaso (
    id_suite INT FOREIGN KEY REFERENCES TestSuite(id_suite),
    id_caso INT FOREIGN KEY REFERENCES CasoPrueba(id_caso),
    PRIMARY KEY (id_suite, id_caso)
);
