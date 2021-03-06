USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_Calificadora](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] NVARCHAR(10) NOT NULL,
 	CONSTRAINT [PK_Calificadora] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]--Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_tipo_calificadora(
	UUID,
	NOMBRE
) as 
SELECT
	UUID,
	NOMBRE
FROM
	Tipo_Calificadora
GO

--Registros
INSERT INTO Tipo_Calificadora VALUES ('SUGEF');
INSERT INTO Tipo_Calificadora VALUES ('Banco');
