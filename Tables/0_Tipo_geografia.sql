USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_geografia](
	UUID INT IDENTITY(1,1) NOT NULL,
	Descripcion NVARCHAR(50) NULL,
 	CONSTRAINT [PK_Tipo_geografia] PRIMARY KEY CLUSTERED (UUID ASC) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_tipo_geografia(
	UUID,
	DESCRIPCION
) AS
SELECT
	UUID,
	DESCRIPCION
FROM
	Tipo_direccion
GO

--Ejemplo
INSERT INTO Tipo_geografia (Descripcion) VALUES ('Pais');
INSERT INTO Tipo_geografia (Descripcion) VALUES ('Estado/Provincia');
INSERT INTO Tipo_geografia (Descripcion) VALUES ('Ciudad/Canton');
INSERT INTO Tipo_geografia (Descripcion) VALUES ('Distrito');
