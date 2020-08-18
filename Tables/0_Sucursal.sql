USE [BANK]
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sucursal](
	[UUID] int IDENTITY(1,1) NOT NULL,
	[Nombre] NVARCHAR(50) NOT NULL,
 	CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) 	ON [PRIMARY]
GO

Create view view_sucursal(
	UUID,
	Nombre
) AS
SELECT
	UUID,
	Nombre
FROM
	Sucursal
GO

--Ejemplo 
INSERT INTO Sucursal VALUES ('SUCURSAL 1');
INSERT INTO Sucursal VALUES ('SUCURSAL 2');
INSERT INTO Sucursal VALUES ('SUCURSAL 3');
INSERT INTO Sucursal VALUES ('SUCURSAL 4');

