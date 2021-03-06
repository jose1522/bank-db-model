USE [BANK]
GO

CREATE TABLE DEPARTAMENTO(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(30) NOT NULL
)
GO

Create view view_departamento(
	UUID,
	TIPO
) AS
SELECT
	UUID,
	TIPO
FROM
	DEPARTAMENTO
GO

INSERT INTO DEPARTAMENTO VALUES('Ventas');
INSERT INTO DEPARTAMENTO VALUES('Tecnologia de Informacion');
INSERT INTO DEPARTAMENTO VALUES('Contabilidad');
INSERT INTO DEPARTAMENTO VALUES('Finanzas');
INSERT INTO DEPARTAMENTO VALUES('Publicidad');
INSERT INTO DEPARTAMENTO VALUES('Servicio al Cliente');
INSERT INTO DEPARTAMENTO VALUES('Recursos Humanos');