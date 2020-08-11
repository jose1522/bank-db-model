USE [BANK]
GO

CREATE TABLE [dbo].[Direccion](
	[UUID] [int] IDENTITY(1,1) NOT NULL,
	[Persona] INT REFERENCES PERSONA(UUID) NOT NULL,
	[Tipo_Direccion] [int] NOT NULL REFERENCES [dbo].[Tipo_direccion] ([UUID]),
	[Geografia] INT NOT NULL REFERENCES GEOGRAFIA(UUID),
	[Detalle] NVARCHAR(200) NOT NULL,
	[Fecha_inicio] [date] DEFAULT GETDATE(),
	CONSTRAINT [PK_Direccion] PRIMARY KEY  
(
	[UUID] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = ON) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

CREATE INDEX INDEX_DIRECCION_ ON DIRECCION(Tipo_Direccion, Persona);
GO

Create view view_direccion(
	UUID,
	Persona,
	Tipo_Direccion,
	Geografia,
	Detalle,
	Fecha_inicio
) AS
SELECT
	UUID,
	Persona,
	Tipo_Direccion,
	Geografia,
	Detalle,
	Fecha_inicio
FROM
	Direccion
GO

--Ejemplo
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (1,1, 91, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (2,1, 96, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (3,1, 91, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (4,1, 100, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (5,1, 102, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (6,1, 99, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (7,1, 95, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (8,1, 97, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (9,1, 93, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (10,1, 98, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (11,1, 100, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (12,1, 91, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (13,1, 99, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (14,1, 97, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (15,1, 97, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (16,1, 94, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (17,1, 96, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (18,1, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (19,1, 101, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (20,1, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (21,1, 94, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (22,1, 98, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (23,1, 102, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (24,1, 102, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (25,1, 95, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (26,1, 95, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (27,1, 102, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (28,1, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (29,1, 91, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (30,1, 94, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (31,1, 101, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (32,1, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (33,1, 98, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (34,1, 93, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (35,1, 93, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (36,1, 95, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (37,1, 99, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (38,1, 101, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (39,1, 102, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (40,1, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (41,2, 97, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (42,2, 94, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (43,2, 100, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (44,2, 96, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (45,2, 97, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (46,2, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (47,2, 101, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (48,2, 100, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (49,2, 92, 'Direccion de prueba');
INSERT INTO Direccion (Persona, Tipo_Direccion, Geografia, Detalle) VALUES (50,2, 91, 'Direccion de prueba');