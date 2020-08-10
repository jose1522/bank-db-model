USE [BANK]
GO

CREATE TABLE [dbo].[Tipo_direccion](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] NVARCHAR(50) NOT NULL, --se cambio el nombre del campo
 CONSTRAINT [PK_Tipo_direccion] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO


Create view view_tipo_direccion(
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
INSERT INTO Tipo_direccion VALUES ('Domiciliar');
INSERT INTO Tipo_direccion VALUES ('Oficina');
INSERT INTO Tipo_direccion VALUES ('Otro');