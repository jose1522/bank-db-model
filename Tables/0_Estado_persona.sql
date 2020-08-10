USE [BANK]
GO

CREATE TABLE [dbo].[Estado_persona](
	UUID INT IDENTITY(1,1) NOT NULL,
	Nombre NVARCHAR(10) NOT NULL,
 	CONSTRAINT [PK_Estado_persona] PRIMARY KEY CLUSTERED (UUID ASC) ON [PRIMARY]
) ON [PRIMARY]--Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_estado_persona(
	UUID,
	Nombre
) AS
SELECT
	UUID,
	Nombre
FROM
	Estado_persona
GO

--Registros
INSERT INTO Estado_persona VALUES ('Activo');
INSERT INTO Estado_persona VALUES ('Inactivo');
INSERT INTO Estado_persona VALUES ('Pendiente');
