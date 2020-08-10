USE [BANK]
GO


CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Persona] INT REFERENCES PERSONA(UUID) NOT NULL,
	[Email] NVARCHAR(50) NOT NULL,
	[Instrucciones] NVARCHAR(200) NOT NULL,
	[Solicitado] NVARCHAR(2) NOT NULL CHECK (Solicitado IN ('Si', 'No'))
	CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] --Luego se especifica a que FG ir� segun modelo f�sico
GO

Create view view_email(
	ID,
	Persona,
	Email,
	Instrucciones,
	Solicitado
) AS
SELECT
	ID,
	Persona,
	Email,
	Instrucciones,
	Solicitado
FROM
	Email
GO


--Ejemplo
INSERT INTO Email VALUES (1,'abc1@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (2,'abc2@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (3,'abc3@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (4,'abc4@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (5,'abc5@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (6,'abc6@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (7,'abc7@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (7,'abc71@gmail.com', 'Instrucciones', 'No');
INSERT INTO Email VALUES (8,'abc8@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (9,'abc9@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (10,'abc10@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (11,'abc11@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (12,'abc12@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (13,'abc13@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (14,'abc14@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (15,'abc15@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (16,'abc16@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (17,'abc17@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (18,'abc18@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (18,'abc181@gmail.com', 'Instrucciones', 'No');
INSERT INTO Email VALUES (19,'abc19@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (20,'abc20@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (21,'abc21@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (22,'abc22@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (23,'abc23@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (24,'abc24@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (25,'abc25@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (26,'abc26@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (27,'abc27@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (28,'abc28@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (29,'abc29@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (30,'abc30@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (31,'abc31@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (32,'abc32@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (33,'abc33@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (34,'abc34@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (35,'abc35@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (36,'abc36@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (37,'abc37@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (38,'abc38@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (38,'abc381@gmail.com', 'Instrucciones', 'No');
INSERT INTO Email VALUES (39,'abc39@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (40,'abc40@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (41,'abc41@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (42,'abc42@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (43,'abc43@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (44,'abc44@gmail.com', 'Instrucciones', 'No');
INSERT INTO Email VALUES (45,'abc45@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (46,'abc46@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (47,'abc47@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (48,'abc48@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (49,'abc49@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES (50,'abc50@gmail.com', 'Instrucciones', 'Si');