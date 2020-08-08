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

--Ejemplo
INSERT INTO Email VALUES ('abc@gmail.com', 'Instrucciones', 'Si');
INSERT INTO Email VALUES ('abc@hotmail.com', 'Instrucciones', 'No');