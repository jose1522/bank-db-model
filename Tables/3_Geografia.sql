USE [TrabajoFinal]
GO

/****** Object:  Table [dbo].[Geografia]    Script Date: 4/8/2020 23:05:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Geografia](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_geografia] [int] NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Pertenece_a] [int] NULL,
 CONSTRAINT [PK_Geografia] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG irá segun modelo físico
GO

ALTER TABLE [dbo].[Geografia]  WITH CHECK ADD  CONSTRAINT [FK_Geografia_Tipo_geografia] FOREIGN KEY([Tipo_geografia])
REFERENCES [dbo].[Tipo_geografia] ([UUID])
GO

ALTER TABLE [dbo].[Geografia] CHECK CONSTRAINT [FK_Geografia_Tipo_geografia]
GO

--Ejemplo
INSERT INTO Geografia VALUES (1, 'San Jose', null);
INSERT INTO Geografia VALUES (2, 'Desamparados', 1);
INSERT INTO Geografia VALUES (3, 'San Antonio', 2);
INSERT INTO Geografia VALUES (1, 'Alajuela', null);
INSERT INTO Geografia VALUES (1, 'Heredia', null);
INSERT INTO Geografia VALUES (1, 'Cartago', null);
INSERT INTO Geografia VALUES (1, 'Limon', null);
INSERT INTO Geografia VALUES (1, 'Puntarenas', null);
INSERT INTO Geografia VALUES (1, 'Guanacaste', null);

