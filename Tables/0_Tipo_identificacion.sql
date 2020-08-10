USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_identificacion](
	UUID INT IDENTITY(1,1) NOT NULL,
	Nombre NVARCHAR(20) NOT NULL,
 	CONSTRAINT [PK_Tipo_identificacion] PRIMARY KEY CLUSTERED ([UUID] ASC) ON [PRIMARY]
) ON [PRIMARY]--Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_tipo_identificacion(
	UUID,
	Nombre
) AS
SELECT
	UUID,
	Nombre
FROM
	Tipo_identificacion
GO

--Registros
INSERT INTO Tipo_identificacion VALUES ('Cedula de identidad');
INSERT INTO Tipo_identificacion VALUES ('Pasaporte');
INSERT INTO Tipo_identificacion VALUES ('Cedula de residencia');
INSERT INTO Tipo_identificacion VALUES ('Cedula juridica');
