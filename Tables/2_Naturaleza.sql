USE [BANK]
GO

CREATE TABLE NATURALEZA(
    UUID INT IDENTITY(1,1) PRIMARY KEY,
    PERSONA INT REFERENCES PERSONA(UUID),
    ROL_PERSONA INT REFERENCES ROL_PERSONA(UUID),
    CONSTRAINT UNIQUE_NATURALEZA UNIQUE(PERSONA,ROL_PERSONA)
)
GO

Create view view_naturaleza(
	UUID,
	PERSONA,
	ROL_PERSONA
) AS
SELECT
	UUID,
	PERSONA,
	ROL_PERSONA
FROM
	NATURALEZA
GO


INSERT INTO NATURALEZA VALUES(1,3)
INSERT INTO NATURALEZA VALUES(2,3)
INSERT INTO NATURALEZA VALUES(3,2)
INSERT INTO NATURALEZA VALUES(4,2)
INSERT INTO NATURALEZA VALUES(5,1)
INSERT INTO NATURALEZA VALUES(6,1)
INSERT INTO NATURALEZA VALUES(7,2)
INSERT INTO NATURALEZA VALUES(8,2)
INSERT INTO NATURALEZA VALUES(9,1)
INSERT INTO NATURALEZA VALUES(10,1)
INSERT INTO NATURALEZA VALUES(11,1)
INSERT INTO NATURALEZA VALUES(12,2)
INSERT INTO NATURALEZA VALUES(13,2)
INSERT INTO NATURALEZA VALUES(14,2)
INSERT INTO NATURALEZA VALUES(15,1)
INSERT INTO NATURALEZA VALUES(16,1)
INSERT INTO NATURALEZA VALUES(17,2)
INSERT INTO NATURALEZA VALUES(18,2)
INSERT INTO NATURALEZA VALUES(19,2)
INSERT INTO NATURALEZA VALUES(20,1)
INSERT INTO NATURALEZA VALUES(21,2)
INSERT INTO NATURALEZA VALUES(22,1)
INSERT INTO NATURALEZA VALUES(23,1)
INSERT INTO NATURALEZA VALUES(24,1)
INSERT INTO NATURALEZA VALUES(25,2)
INSERT INTO NATURALEZA VALUES(26,2)
INSERT INTO NATURALEZA VALUES(27,1)
INSERT INTO NATURALEZA VALUES(28,1)
INSERT INTO NATURALEZA VALUES(29,2)
INSERT INTO NATURALEZA VALUES(30,2)
INSERT INTO NATURALEZA VALUES(31,2)
INSERT INTO NATURALEZA VALUES(32,2)
INSERT INTO NATURALEZA VALUES(33,1)
INSERT INTO NATURALEZA VALUES(34,2)
INSERT INTO NATURALEZA VALUES(35,1)
INSERT INTO NATURALEZA VALUES(36,2)
INSERT INTO NATURALEZA VALUES(37,1)
INSERT INTO NATURALEZA VALUES(38,2)
INSERT INTO NATURALEZA VALUES(39,2)
INSERT INTO NATURALEZA VALUES(40,1)
INSERT INTO NATURALEZA VALUES(41,1)
INSERT INTO NATURALEZA VALUES(42,1)
INSERT INTO NATURALEZA VALUES(43,1)
INSERT INTO NATURALEZA VALUES(44,1)
INSERT INTO NATURALEZA VALUES(45,1)
INSERT INTO NATURALEZA VALUES(46,1)
INSERT INTO NATURALEZA VALUES(47,1)
INSERT INTO NATURALEZA VALUES(48,1)
INSERT INTO NATURALEZA VALUES(49,1)
INSERT INTO NATURALEZA VALUES(50,1)