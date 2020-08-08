USE [BANK]
GO

/****** Object:  Table [dbo].[Clasificacion_riesgo]    Script Date: 4/8/2020 22:30:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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


--Registros
INSERT INTO Clasificacion_riesgo VALUES ('A1');
INSERT INTO Clasificacion_riesgo VALUES ('A2');
INSERT INTO Clasificacion_riesgo VALUES ('B1');
INSERT INTO Clasificacion_riesgo VALUES ('B2');
INSERT INTO Clasificacion_riesgo VALUES ('C1');
INSERT INTO Clasificacion_riesgo VALUES ('C2');
INSERT INTO Clasificacion_riesgo VALUES ('D');
INSERT INTO Clasificacion_riesgo VALUES ('E');
