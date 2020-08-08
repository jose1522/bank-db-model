USE [BANK]
GO

CREATE TABLE NIVEL_ACADEMICO(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(40) NOT NULL
)

INSERT INTO NIVEL_ACADEMICO VALUES ('Educacion Media');
INSERT INTO NIVEL_ACADEMICO VALUES ('Bachillerato Universitario');
INSERT INTO NIVEL_ACADEMICO VALUES ('Diplomado');
INSERT INTO NIVEL_ACADEMICO VALUES ('Técnico');
INSERT INTO NIVEL_ACADEMICO VALUES ('Licenciatura');
INSERT INTO NIVEL_ACADEMICO VALUES ('Maestria');
INSERT INTO NIVEL_ACADEMICO VALUES ('Doctorado');