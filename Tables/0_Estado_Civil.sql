USE [BANK]
GO

CREATE TABLE ESTADO_CIVIL(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)
GO

INSERT INTO ESTADO_CIVIL VALUES ('Soltero');
INSERT INTO ESTADO_CIVIL VALUES ('Casado');
INSERT INTO ESTADO_CIVIL VALUES ('Union Libre');
INSERT INTO ESTADO_CIVIL VALUES ('Viudo');