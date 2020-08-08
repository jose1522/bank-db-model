USE [BANK]
GO

/****** Object:  Table [dbo].[Ingresos]    Script Date: 4/8/2020 21:11:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ingresos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Ingreso] date DEFAULT GETDATE(),
	[Moneda] INT REFERENCES MONEDA(UUID) NOT NULL,
	[Persona] INT REFERENCES PERSONA(UUID) NOT NULL,
	[Ingreso_bruto] [money] NOT NULL,
	[Ingreso_neto] [money] NOT NULL,
	[Ingreso_familiar] [money] DEFAULT 0,
	[Es_planilla] NVVARCHAR(2) NOT NULL CHECK (Es_planilla IN ('Si', 'No')),
	[Otros_ingresos] [money] DEFAULT 0,
	[Otros_ingresos_declarados] [money] DEFAULT 0,
	CONSTRAINT CK_INGRESO_BRUTO CHECK (Ingreso_bruto >= 0),
	CONSTRAINT CK_Ingreso_neto CHECK (Ingreso_neto >= 0),
	CONSTRAINT CK_Ingreso_familiar CHECK (Ingreso_familiar >= 0),
	CONSTRAINT CK_Otros_ingresos CHECK (Otros_ingresos >= 0),
	CONSTRAINT CK_Otros_ingresos_declarados CHECK (Otros_ingresos_declarados >= 0),
	CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED
	(
		[ID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

--Ejemplo
