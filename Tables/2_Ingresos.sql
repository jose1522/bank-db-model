USE [BANK]
GO


CREATE TABLE [dbo].[Ingresos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Ingreso] date DEFAULT GETDATE(),
	[Moneda] INT REFERENCES MONEDA(UUID) NOT NULL,
	[Persona] INT REFERENCES PERSONA(UUID) NOT NULL,
	[Ingreso_bruto] [money] NOT NULL,
	[Ingreso_neto] [money] NOT NULL,
	[Ingreso_familiar] [money] DEFAULT 0,
	[Es_planilla] NVARCHAR(2) NOT NULL CHECK (Es_planilla IN ('Si', 'No')),
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

Create view view_ingresos(
	ID,
	Fecha_Ingreso,
	Moneda,
	Persona,
	Ingreso_bruto,
	Ingreso_neto,
	Ingreso_familiar,
	Es_planilla,
	Otros_ingresos,
	Otros_ingresos_declarados
) AS
SELECT
	ID,
	Fecha_Ingreso,
	Moneda,
	Persona,
	Ingreso_bruto,
	Ingreso_neto,
	Ingreso_familiar,
	Es_planilla,
	Otros_ingresos,
	Otros_ingresos_declarados
FROM
	Ingresos
GO

--Ejemplo
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,1,1250180,1000144,1250180,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,2,768833,615066.4,1073277.07,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,3,953027,762421.6,1511758.06,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,4,919633,735706.4,919633,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,5,1318023,1054418.4,486738.31,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,6,1577424,1261939.2,302409.21,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,7,546418,437134.4,546418,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,8,1097898,878318.4,1788354.97,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,9,1954633,1563706.4,1954633,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,10,1186342,949073.6,1422410.23,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,11,680758,544606.4,878437.33,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,12,1599694,1279755.2,3128366.63,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,13,964831,771864.8,1338686.42,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,14,1223559,978847.2,1908576.09,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,15,1334705,1067764,1334705,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,16,1783311,1426648.8,1783311,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,17,1584005,1267204,3135480.14,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,18,979747,783797.6,979747,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,19,1662748,1330198.4,2841273.52,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,20,1976599,1581279.2,1924607.09,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,21,998499,798799.2,414115.88,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,22,1693339,1354671.2,96039.28,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,23,798925,639140,798925,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,24,1042350,833880,1042350,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,25,945472,756377.6,671094.58,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,26,1570054,1256043.2,2843980.29,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,27,921851,737480.8,1253903.05,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,28,900577,720461.6,1543894.29,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,29,1055010,844008,832404.9,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,30,1667608,1334086.4,2322661.66,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,31,548461,438768.8,435502.89,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,32,697629,558103.2,370001.08,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,33,768611,614888.8,768611,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,34,1062726,850180.8,785322.35,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,35,1242353,993882.4,1286450.1,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,36,1247334,997867.2,1247334,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,37,1630805,1304644,1630805,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,38,1835335,1468268,1835335,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,39,1127264,901811.2,653572.69,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,40,986446,789156.8,92342.85,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,41,15733047,12586437.6,1523565.4,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,42,19237585,15390068,19237585,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,43,17423525,13938820,20753281.51,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,44,6596374,5277099.2,2421750.58,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,45,19634397,15707517.6,19634397,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,46,7844759,6275807.2,7844759,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,47,5619926,4495940.8,7583489.09,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,48,15557807,12446245.6,29175503.48,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,49,9882017,7905613.6,13542906.56,'Si');
INSERT INTO INGRESOS (MONEDA,PERSONA,Ingreso_bruto,Ingreso_neto,Ingreso_familiar,Es_planilla) VALUES (37,50,14363682,11490945.6,16255725.16,'Si');