USE BANK
GO

CREATE TABLE PERSONA (
    UUID INT IDENTITY(1,1),
    FECHA_INGRESO DATE DEFAULT GETDATE(),
    ESTADO INT NOT NULL REFERENCES ESTADO_PERSONA(UUID),
    TIPO INT NOT NULL REFERENCES TIPO_PERSONA(UUID),
    CONSTRAINT [PK_PERSONA] PRIMARY KEY CLUSTERED 
    (
	    [UUID] ASC
    )   WITH (  PAD_INDEX = OFF, 
                STATISTICS_NORECOMPUTE = OFF, 
                IGNORE_DUP_KEY = OFF, 
                ALLOW_ROW_LOCKS = ON, 
                ALLOW_PAGE_LOCKS = ON, 
                OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
    ) ON [PRIMARY]
) ON [PRIMARY]
GO

Create view view_persona(
	UUID,
	FECHA_INGRESO,
	ESTADO,
	TIPO
) AS
SELECT
	UUID,
	FECHA_INGRESO,
	ESTADO,
	TIPO
FROM
	PERSONA
GO

INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,1)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (1,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (3,2)
INSERT INTO PERSONA (ESTADO, TIPO) VALUES (2,2)
