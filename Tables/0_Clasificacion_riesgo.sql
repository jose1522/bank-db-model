USE [BANK]
GO

CREATE TABLE [dbo].[Clasificacion_riesgo](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] NVARCHAR(2) NOT NULL,
 	CONSTRAINT [PK_Clasificacion_riesgo] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_clasificacion_riesgo(
	UUID,
	CLASIFICACION
) AS
SELECT
	UUID,
	CLASIFICACION
FROM
	Clasificacion_riesgo
GO

--Registros
INSERT INTO Clasificacion_riesgo VALUES ('A1');
INSERT INTO Clasificacion_riesgo VALUES ('A2');
INSERT INTO Clasificacion_riesgo VALUES ('B1');
INSERT INTO Clasificacion_riesgo VALUES ('B2');
INSERT INTO Clasificacion_riesgo VALUES ('C1');
INSERT INTO Clasificacion_riesgo VALUES ('C2');
INSERT INTO Clasificacion_riesgo VALUES ('D');
INSERT INTO Clasificacion_riesgo VALUES ('E');
