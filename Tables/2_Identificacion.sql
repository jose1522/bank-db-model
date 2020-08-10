USE [BANK]
GO


CREATE TABLE [dbo].[Identificacion](
	UUID INT IDENTITY(1,1) NOT NULL,
	PERSONA INT REFERENCES PERSONA(UUID) NOT NULL,
	GEOGRAFIA_ID INT NOT NULL REFERENCES GEOGRAFIA(UUID),
	TIPO INT NOT NULL REFERENCES Tipo_identificacion(UUID),
	ID NVARCHAR(20) NOT NULL,
	FECHA_VENCIMIENTO DATE NOT NULL,
 	CONSTRAINT [PK_identificacion] PRIMARY KEY CLUSTERED ([UUID] ASC) ON [PRIMARY],
	CONSTRAINT UNIQUE_INDENTIFICACION_GEOGRAFIA UNIQUE(GEOGRAFIA_ID,TIPO,ID),
	CONSTRAINT UNIQUE_INDENTIFICACION_PERSONA UNIQUE(PERSONA,TIPO)
) ON [PRIMARY]--Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_identificacion(
	UUID,
	PERSONA,
	GEOGRAFIA_ID,
	TIPO,
	ID,
	FECHA_VENCIMIENTO
) AS
SELECT
	UUID,
	PERSONA,
	GEOGRAFIA_ID,
	TIPO,
	ID,
	FECHA_VENCIMIENTO
FROM
	Identificacion
GO

--Registros
INSERT INTO identificacion VALUES (1,1,1,1000001,'2025/01/01');
INSERT INTO identificacion VALUES (2,1,1,1000002,'2025/01/01');
INSERT INTO identificacion VALUES (3,1,1,1000003,'2025/01/01');
INSERT INTO identificacion VALUES (4,1,1,1000004,'2025/01/01');
INSERT INTO identificacion VALUES (5,1,1,1000005,'2025/01/01');
INSERT INTO identificacion VALUES (6,1,1,1000006,'2025/01/01');
INSERT INTO identificacion VALUES (7,1,1,1000007,'2025/01/01');
INSERT INTO identificacion VALUES (8,1,1,1000008,'2025/01/01');
INSERT INTO identificacion VALUES (9,1,1,1000009,'2025/01/01');
INSERT INTO identificacion VALUES (10,1,1,10000010,'2025/01/01');
INSERT INTO identificacion VALUES (11,1,1,10000011,'2025/01/01');
INSERT INTO identificacion VALUES (12,1,1,10000012,'2025/01/01');
INSERT INTO identificacion VALUES (13,1,1,10000013,'2025/01/01');
INSERT INTO identificacion VALUES (14,1,1,10000014,'2025/01/01');
INSERT INTO identificacion VALUES (15,1,1,10000015,'2025/01/01');
INSERT INTO identificacion VALUES (16,1,1,10000016,'2025/01/01');
INSERT INTO identificacion VALUES (17,1,1,10000017,'2025/01/01');
INSERT INTO identificacion VALUES (18,1,1,10000018,'2025/01/01');
INSERT INTO identificacion VALUES (19,1,1,10000019,'2025/01/01');
INSERT INTO identificacion VALUES (20,1,1,10000020,'2025/01/01');
INSERT INTO identificacion VALUES (21,1,1,10000021,'2025/01/01');
INSERT INTO identificacion VALUES (22,1,1,10000022,'2025/01/01');
INSERT INTO identificacion VALUES (23,1,1,10000023,'2025/01/01');
INSERT INTO identificacion VALUES (24,1,1,10000024,'2025/01/01');
INSERT INTO identificacion VALUES (25,1,1,10000025,'2025/01/01');
INSERT INTO identificacion VALUES (26,1,1,10000026,'2025/01/01');
INSERT INTO identificacion VALUES (27,1,1,10000027,'2025/01/01');
INSERT INTO identificacion VALUES (28,1,1,10000028,'2025/01/01');
INSERT INTO identificacion VALUES (29,1,1,10000029,'2025/01/01');
INSERT INTO identificacion VALUES (30,1,1,10000030,'2025/01/01');
INSERT INTO identificacion VALUES (31,1,1,10000031,'2025/01/01');
INSERT INTO identificacion VALUES (32,1,1,10000032,'2025/01/01');
INSERT INTO identificacion VALUES (33,1,1,10000033,'2025/01/01');
INSERT INTO identificacion VALUES (34,1,1,10000034,'2025/01/01');
INSERT INTO identificacion VALUES (35,1,1,10000035,'2025/01/01');
INSERT INTO identificacion VALUES (36,1,1,10000036,'2025/01/01');
INSERT INTO identificacion VALUES (37,1,1,10000037,'2025/01/01');
INSERT INTO identificacion VALUES (38,1,1,10000038,'2025/01/01');
INSERT INTO identificacion VALUES (39,1,1,10000039,'2025/01/01');
INSERT INTO identificacion VALUES (40,1,1,10000040,'2025/01/01');
INSERT INTO identificacion VALUES (41,1,4,10000041,'2025/01/01');
INSERT INTO identificacion VALUES (42,1,4,10000042,'2025/01/01');
INSERT INTO identificacion VALUES (43,1,4,10000043,'2025/01/01');
INSERT INTO identificacion VALUES (44,1,4,10000044,'2025/01/01');
INSERT INTO identificacion VALUES (45,1,4,10000045,'2025/01/01');
INSERT INTO identificacion VALUES (46,1,4,10000046,'2025/01/01');
INSERT INTO identificacion VALUES (47,1,4,10000047,'2025/01/01');
INSERT INTO identificacion VALUES (48,1,4,10000048,'2025/01/01');
INSERT INTO identificacion VALUES (49,1,4,10000049,'2025/01/01');
INSERT INTO identificacion VALUES (50,1,4,10000050,'2025/01/01');