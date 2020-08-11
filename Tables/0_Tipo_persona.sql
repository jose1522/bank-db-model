USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_persona](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] NVARCHAR(10) NOT NULL,
 	CONSTRAINT [PK_Tipo_persona] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]--Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_tipo_persona(
	UUID,
	Nombre
) AS
SELECT
	UUID,
	Nombre
FROM
	Tipo_persona
GO

--Registros
INSERT INTO Tipo_persona VALUES ('Fisica');
INSERT INTO Tipo_persona VALUES ('Juridica');
