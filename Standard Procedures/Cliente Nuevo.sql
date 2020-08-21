CREATE PROCEDURE psInsertNewClient
    @DIRECCION NVARCHAR(200), 
    @GEOGRAFIA INT,
    @TIPO_DIRECCION INT,
    @AREA_TELEFONO INT,
    @TELEFONO INT,
    @INSTRUCCIONES_TELEFONO [nchar](200),
    @TIPO_TELEFONO INT,
    @TIPO_CLIENTE INT,
    @ESTADO_CLIENTE INT,
    @PAIS_IDENTIFICACION INT,
    @IDENTIFICACION NVARCHAR(20),
    @VENCIMIENTO_IDENTIFICACION DATE,
    @TIPO_IDENTIFICACION INT,
    @NEWID INT OUTPUT
 AS
 BEGIN

    DECLARE @TEMPTABLE TABLE (ID INT);
    
    INSERT INTO PERSONA (ESTADO, TIPO) 
    OUTPUT inserted.UUID INTO @TEMPTABLE
    VALUES (@ESTADO_CLIENTE, @TIPO_CLIENTE);

    SELECT TOP 1 @NEWID = ID FROM @TEMPTABLE;
    
    INSERT INTO DIRECCION (PERSONA, TIPO_DIRECCION, GEOGRAFIA, DETALLE)
    VALUES(@NEWID, @TIPO_DIRECCION, @GEOGRAFIA, @DIRECCION);

    INSERT INTO TELEFONO (TIPO_TELEFONO, AREA, NUMERO,INSTRUCCIONES)
    VALUES (@TIPO_TELEFONO, @AREA_TELEFONO, @TELEFONO, @INSTRUCCIONES_TELEFONO);

    INSERT INTO NATURALEZA (PERSONA, ROL_PERSONA)
    VALUES (@NEWID, 1);
END;
 GO

 CREATE PROCEDURE psAddPhisicalClientInfo
    @PRIMER_NOMBRE NVARCHAR(200), 
    @SEGUNDO_NOMBRE NVARCHAR(50),
    @APELLIDOS NVARCHAR(50),
    @FECHA_NACIMIENTO DATE,
    @PERSONA INT
 AS
    INSERT INTO PERSONA_FISICA (UUID, PRIMER_NOMBRE, SEGUNDO_NOMBRE, APELLIDOS, FECHA_NACIMIENTO)
    VALUES (@PERSONA, @PRIMER_NOMBRE, @SEGUNDO_NOMBRE, @APELLIDOS, @FECHA_NACIMIENTO)
 GO

CREATE PROCEDURE psAddNonPhisicalClientInfo
    @NOMBRE NVARCHAR(200), 
    @PERSONA INT
 AS
    INSERT INTO PERSONA_JURIDICA (UUID, NOMBRE)
    VALUES (@PERSONA, @NOMBRE)
 GO