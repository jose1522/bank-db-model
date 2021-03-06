USE [BANK]
GO

CREATE TABLE OPERACION(
    UUID INT IDENTITY(1,1),
    FECHA_FORMALIZACION DATE DEFAULT GETDATE(),
    FECHA_VENCIMIENTO DATE NOT NULL,
    FECHA_CANCELACION DATE,
    PLAZO INT NOT NULL,
    DIA_PAGO INT NOT NULL,
    MONTO MONEY NOT NULL,
    ESTADO INT REFERENCES ESTADO_OPERACION(UUID) NOT NULL,
    CLIENTE INT REFERENCES NATURALEZA(UUID) NOT NULL,
    EJECUTIVO INT REFERENCES NATURALEZA(UUID) NOT NULL,
    FORMALIZADOR INT REFERENCES NATURALEZA(UUID) NOT NULL,
    TIPO_OPERACION INT REFERENCES TIPO_OPERACION(UUID) NOT NULL,
    MONEDA INT REFERENCES MONEDA(UUID) NOT NULL,
    SUCURSAL INT REFERENCES SUCURSAL(UUID) NOT NULL,
    CONSTRAINT CK_MONTO_OPERACION CHECK (MONTO>0),
	CONSTRAINT [PK_OPERACION] PRIMARY KEY CLUSTERED
(
	[UUID] ASC
)	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) 	ON [PRIMARY]
GO

CREATE INDEX INDEX_OPERACION on OPERACION (	
    [ESTADO],
	[CLIENTE],
    [EJECUTIVO],
    [FORMALIZADOR],
    [SUCURSAL]);
GO

Create view view_operacion(
	UUID,
	FECHA_FORMALIZACION,
    FECHA_VENCIMIENTO,
    FECHA_CANCELACION,
    PLAZO,
    DIA_PAGO,
    ESTADO,
    CLIENTE,
    EJECUTIVO,
    FORMALIZADOR,
    TIPO_OPERACION,
    MONEDA,
    SUCURSAL
) AS
SELECT
	UUID,
	FECHA_FORMALIZACION,
    FECHA_VENCIMIENTO,
    FECHA_CANCELACION,
    PLAZO,
    DIA_PAGO,
    ESTADO,
    CLIENTE,
    EJECUTIVO,
    FORMALIZADOR,
    TIPO_OPERACION,
    MONEDA,
    SUCURSAL
FROM
	OPERACION
GO

INSERT INTO OPERACION  (
                        FECHA_FORMALIZACION, 
                        FECHA_VENCIMIENTO,  
                        PLAZO, 
                        DIA_PAGO,  
                        ESTADO,  
                        CLIENTE,  
                        EJECUTIVO,  
                        FORMALIZADOR,  
                        TIPO_OPERACION,  
                        MONEDA,  
                        SUCURSAL, 
                        MONTO) 
    VALUES 
        ('2020-08-05', '2022-07-03', 23, 5, 1, 3, 1, 2, 2, 37, 1, 1083715),
        ('2020-08-13', '2023-01-06', 29, 13, 2, 4, 1, 2, 2, 37, 2, 2421594),
        ('2020-08-15', '2023-06-28', 35, 15, 2, 5, 1, 2, 2, 37, 2, 2014177),
        ('2020-08-08', '2023-04-02', 32, 8, 2, 6, 1, 2, 2, 37, 2, 1935633),
        ('2020-08-03', '2022-05-16', 22, 3, 2, 7, 1, 2, 2, 37, 2, 4817254),
        ('2020-08-13', '2022-12-07', 28, 13, 3, 8, 1, 2, 2, 37, 3, 4894094),
        ('2020-08-05', '2022-10-01', 26, 5, 3, 9, 1, 2, 2, 37, 3, 3866983),
        ('2020-08-11', '2022-04-17', 20, 11, 3, 10, 1, 2, 2, 37, 3, 2327329),
        ('2020-08-17', '2022-06-08', 22, 17, 1, 11, 1, 2, 2, 37, 1, 4546869),
        ('2020-08-13', '2022-12-30', 29, 13, 3, 12, 1, 2, 2, 37, 3, 1100382),
        ('2020-08-05', '2022-10-11', 27, 5, 2, 13, 1, 2, 2, 37, 2, 4770926),
        ('2020-08-16', '2022-04-08', 20, 16, 1, 14, 1, 2, 2, 37, 1, 4078745),
        ('2020-08-06', '2022-01-05', 17, 6, 3, 15, 1, 2, 2, 37, 3, 3691691),
        ('2020-08-16', '2022-08-12', 24, 16, 2, 16, 1, 2, 2, 37, 2, 3431173),
        ('2020-08-02', '2023-02-08', 31, 2, 1, 17, 1, 2, 2, 37, 1, 3704798),
        ('2020-08-13', '2022-06-04', 22, 13, 1, 18, 1, 2, 2, 37, 1, 3980462),
        ('2020-08-12', '2022-06-26', 23, 12, 1, 19, 1, 2, 2, 37, 1, 3208107),
        ('2020-08-16', '2023-05-18', 34, 16, 3, 20, 1, 2, 2, 37, 3, 2395290),
        ('2020-08-15', '2022-04-07', 20, 15, 3, 21, 1, 2, 2, 37, 3, 1008929),
        ('2020-08-17', '2022-02-03', 18, 17, 3, 22, 1, 2, 2, 37, 3, 4141035),
        ('2020-08-11', '2022-10-26', 27, 11, 3, 23, 1, 2, 2, 37, 3, 3952913),
        ('2020-08-10', '2022-03-24', 20, 10, 1, 24, 1, 2, 2, 37, 1, 3442196),
        ('2020-08-11', '2022-04-08', 20, 11, 2, 25, 1, 2, 2, 37, 2, 1834925),
        ('2020-08-03', '2022-11-13', 28, 3, 3, 26, 1, 2, 2, 37, 3, 4888540),
        ('2020-08-03', '2022-01-01', 17, 3, 2, 27, 1, 2, 2, 37, 2, 2564899),
        ('2020-08-15', '2023-06-28', 35, 15, 1, 28, 1, 2, 2, 37, 1, 2112416),
        ('2020-08-06', '2022-09-11', 26, 6, 2, 29, 1, 2, 2, 37, 2, 2163042),
        ('2020-08-06', '2022-12-26', 29, 6, 3, 30, 1, 2, 2, 37, 3, 3646278),
        ('2020-08-16', '2023-06-03', 34, 16, 1, 31, 1, 2, 2, 37, 1, 2316546),
        ('2020-08-17', '2022-07-04', 23, 17, 3, 32, 1, 2, 2, 37, 3, 3580865),
        ('2020-08-03', '2022-12-02', 28, 3, 3, 33, 1, 2, 2, 37, 3, 3714751),
        ('2020-08-09', '2023-05-11', 34, 9, 3, 34, 1, 2, 2, 37, 3, 1042267),
        ('2020-08-09', '2022-01-21', 18, 9, 2, 35, 1, 2, 2, 37, 2, 2714809),
        ('2020-08-06', '2022-01-13', 18, 6, 2, 36, 1, 2, 2, 37, 2, 1899069),
        ('2020-08-11', '2023-07-11', 35, 11, 1, 37, 1, 2, 2, 37, 1, 1946706),
        ('2020-08-15', '2023-04-21', 33, 15, 3, 38, 1, 2, 2, 37, 3, 1640195),
        ('2020-08-05', '2023-03-10', 32, 5, 3, 39, 1, 2, 2, 37, 3, 2664152),
        ('2020-08-06', '2022-12-25', 29, 6, 3, 40, 1, 2, 2, 37, 3, 2982871),
        ('2020-08-16', '2022-02-27', 19, 16, 2, 41, 1, 2, 2, 37, 2, 37949392),
        ('2020-08-12', '2022-06-17', 22, 12, 2, 42, 1, 2, 2, 37, 2, 11167908),
        ('2020-08-12', '2023-04-01', 32, 12, 3, 43, 1, 2, 2, 37, 3, 37186829),
        ('2020-08-01', '2022-06-11', 23, 1, 2, 44, 1, 2, 2, 37, 2, 43636159),
        ('2020-08-14', '2023-06-27', 35, 14, 3, 45, 1, 2, 2, 37, 3, 18134191),
        ('2020-08-03', '2022-08-12', 25, 3, 3, 46, 1, 2, 2, 37, 3, 35379731),
        ('2020-08-07', '2023-03-11', 32, 7, 1, 47, 1, 2, 2, 37, 1, 12743377),
        ('2020-08-02', '2023-04-29', 33, 2, 3, 48, 1, 2, 2, 37, 3, 48485900),
        ('2020-08-04', '2023-07-28', 36, 4, 2, 49, 1, 2, 2, 37, 2, 36591866),
        ('2020-08-01', '2022-09-12', 26, 1, 2, 50, 1, 2, 2, 37, 2, 24716176)