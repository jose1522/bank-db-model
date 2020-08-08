USE [BANK]
GO

CREATE TABLE [dbo].[Telefono](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_telefono] [int] NOT NULL REFERENCES [dbo].[Tipo_telefono] ([UUID]),
	[Area] INT NOT NULL,
	[Numero] [int] NOT NULL,
	[Instrucciones] [nchar](200) NOT NULL,
	[Solicitado] [char](2) NOT NULL CHECK (Solicitado IN ('Si', 'No'))
 	CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED
	(
		[UUID] ASC
	)	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
GO

--Ejemplo
INSERT INTO Telefono VALUES (2, 506, 88882221, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882222, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882223, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882224, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882225, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882226, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882227, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882228, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882229, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882210, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882211, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88822212, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88822213, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88822214, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88822215, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882216, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882217, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882218, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882219, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882220, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882221, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882222, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882223, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882224, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882225, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882226, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882227, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882228, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882229, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882230, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882231, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882232, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882233, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882234, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882235, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882236, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882237, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (2, 506, 88882238, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882239, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (1, 506, 88882240, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882241, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882242, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882243, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (4, 506, 88882244, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (4, 506, 88882245, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (4, 506, 88882246, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882247, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882248, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (3, 506, 88882249, 'Instrucciones', 'Si');
INSERT INTO Telefono VALUES (4, 506, 88882250, 'Instrucciones', 'Si');