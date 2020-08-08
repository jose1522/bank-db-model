USE [TrabajoFinal]
GO

/****** Object:  Table [dbo].[Telefono]    Script Date: 4/8/2020 23:18:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Telefono](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_telefono] [int] NOT NULL,
	[Area] [nchar](30) NOT NULL,
	[Numero] [int] NOT NULL,
	[Instrucciones] [nchar](200) NOT NULL,
	[Solicitado] [char](2) NOT NULL CHECK (Solicitado IN ('Si', 'No'))
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED

(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Tipo_telefono] FOREIGN KEY([Tipo_telefono])
REFERENCES [dbo].[Tipo_telefono] ([UUID])
GO

ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Tipo_telefono]
GO

--Ejemplo
INSERT INTO Telefono VALUES (2, 'area', 88882222, 'Instrucciones', 'Si');
