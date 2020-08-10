USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_telefono](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] NVARCHAR(50) NOT NULL, --Nombre se cambia por descripcion
 CONSTRAINT [PK_Tipo_telefono] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_tipo_telefono(
	UUID,
	Descripcion
) AS
SELECT
	UUID,
	Descripcion
FROM
	Tipo_telefono
GO

--Ejemplos
INSERT INTO Tipo_telefono VALUES ('Movil');
INSERT INTO Tipo_telefono VALUES ('Casa');
INSERT INTO Tipo_telefono VALUES ('Oficina');
INSERT INTO Tipo_telefono VALUES ('Otro');

