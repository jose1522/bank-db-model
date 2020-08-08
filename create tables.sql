USE BANK;
GO

DROP TABLE IF EXISTS PERSONA_FISICA;
DROP TABLE IF EXISTS PERSONA_JURIDICA;
DROP TABLE IF EXISTS PERSONA;
DROP TABLE IF EXISTS GENERO;
DROP TABLE IF EXISTS ESTADO_CIVIL;
DROP TABLE IF EXISTS OCUPACION;
DROP TABLE IF EXISTS DEPARTAMENTO;
DROP TABLE IF EXISTS NIVEL_ACADEMICO;
DROP TABLE IF EXISTS ROL_PERSONA;

CREATE TABLE PERSONA (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FECHA_INGRESO DATE DEFAULT GETDATE(),
)

CREATE TABLE GENERO(
    UUID NVARCHAR(1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)

CREATE TABLE ESTADO_CIVIL(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)

CREATE TABLE OCUPACION(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)

CREATE TABLE DEPARTAMENTO(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)

CREATE TABLE NIVEL_ACADEMICO(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    TIPO NVARCHAR(20) NOT NULL
)

CREATE TABLE ROL_PERSONA(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    DESCRIPCION NVARCHAR(20) NOT NULL
)

CREATE TABLE NATURALEZA(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    PERSONA INT REFERENCES PERSONA(ID),
    ROL_PERSONA INT REFERENCES ROL_PERSONA(ID),
    CONSTRAINT UNIQUE_NATURALEZA UNIQUE(PERSONA,ROL_PERSONA)
)

CREATE TABLE PERSONA_JURIDICA (
    ID INT REFERENCES PERSONA(ID),
    NOMBRE NVARCHAR(200) NOT NULL,
    CONSTRAINT PK_PERSONA_JURIDICA PRIMARY KEY (ID)
)

CREATE TABLE PERSONA_FISICA(
    ID INT REFERENCES PERSONA(ID),
    PRIMER_NOMBRE NVARCHAR(50) NOT NULL,
    SEGUNDO_NOMBRE NVARCHAR(50) NOT NULL,
    APELLIDOS NVARCHAR(100) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL,
    FECHA_INGRESO DATA DEFAULT GETDATE(),
    CONSTRAINT PK_PERSONA_FISICA PRIMARY KEY (ID)
)