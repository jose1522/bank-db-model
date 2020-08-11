
CREATE PROCEDURE psGetAllPersonData
AS
WITH DOMICILIO (PERSONA, DETALLE) AS (
        SELECT D.Persona, D.Detalle
        FROM Direccion D
        LEFT JOIN Tipo_direccion T ON D.Tipo_Direccion = T.UUID and D.Tipo_Direccion = 1
), OFICINA (PERSONA, DETALLE) AS (
        SELECT D.Persona, D.Detalle
        FROM Direccion D
        LEFT JOIN Tipo_direccion T ON D.Tipo_Direccion = T.UUID and D.Tipo_Direccion = 2
), PERSONA2 (UUID, FECHA_INGRESO, ESTADO, TIPO, DIRECCION_DOMESTICA, DIRECCION_OFICINA, TIEMPO_AFICIACION) AS(
        SELECT p.UUID, p.FECHA_INGRESO, s.Nombre, p.TIPO, d1.Detalle, d2.Detalle, DATEDIFF(year, GETDATE(),p.FECHA_INGRESO) 
        FROM PERSONA p
        JOIN Estado_persona s ON s.UUID = p.ESTADO
        LEFT JOIN DOMICILIO d1 ON p.UUID = d1.Persona
        LEFT JOIN OFICINA d2 ON p.UUID = d2.Persona
    )
select *
from 
    (   SELECT 
            f.PRIMER_NOMBRE AS NOMBRE,
            p.FECHA_INGRESO,
            p.ESTADO,
            p.TIEMPO_AFICIACION,
            p.DIRECCION_DOMESTICA,
            p.DIRECCION_OFICINA
        FROM
            PERSONA2 p
            JOIN PERSONA_FISICA f ON p.UUID = f.UUID and p.TIPO = 1

    UNION ALL 
        
        SELECT 
            j.NOMBRE AS NOMBRE,
            p.FECHA_INGRESO,
            p.ESTADO,
            p.TIEMPO_AFICIACION,
            p.DIRECCION_DOMESTICA,
            p.DIRECCION_OFICINA
        FROM
            PERSONA2 p
            JOIN PERSONA_JURIDICA j ON p.UUID = j.UUID and p.TIPO = 2
    ) as tbl
GO

CREATE PROCEDURE psGetPersonDataByID
@id int
AS
WITH DOMICILIO (PERSONA, DETALLE) AS (
        SELECT D.Persona, D.Detalle
        FROM Direccion D
        INNER JOIN Tipo_direccion T ON D.Tipo_Direccion = T.UUID and D.Tipo_Direccion = 1 and D.Persona = @id
), OFICINA (PERSONA, DETALLE) AS (
        SELECT D.Persona, D.Detalle
        FROM Direccion D
        LEFT JOIN Tipo_direccion T ON D.Tipo_Direccion = T.UUID and D.Tipo_Direccion = 2 and D.Persona = @id
)
SELECT 
    CASE
        when p.TIPO = 1 then f.PRIMER_NOMBRE
        else j.nombre
    END AS NOMBRE,
    p.FECHA_INGRESO,
    s.NOMBRE AS ESTADO,
    DATEDIFF(year, GETDATE(),p.FECHA_INGRESO) AS TIEMPO_AFICIACION,
    d1.Detalle as DIRECCION_DOMESTICA,
    d2.Detalle as DIRECCION_OFICINA
FROM
    PERSONA p
    LEFT JOIN PERSONA_FISICA f ON p.UUID = f.UUID
    LEFT JOIN PERSONA_JURIDICA j ON p.UUID = j.UUID
    LEFT JOIN Estado_persona s ON s.UUID = p.ESTADO
    LEFT JOIN DOMICILIO d1 ON p.UUID = d1.Persona
    LEFT JOIN OFICINA d2 ON p.UUID = d2.Persona
WHERE
    p.UUID = @id
