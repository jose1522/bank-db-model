use [BANK]
GO

-- Create login
CREATE LOGIN Administrativo WITH PASSWORD = '72v4l5ZF3Xtd';
GO

-- Create user
CREATE USER Administrativo FOR LOGIN Administrativo;
GO

-- Create role
CREATE ROLE Rol_Administrativo AUTHORIZATION Administrativo;  
GO  

-- Grant Access
DECLARE @sql VARCHAR(MAX)

SELECT GrantStatement = 'GRANT SELECT ON ' + TABLE_NAME + ' TO Rol_Administrativo'
INTO #grants
FROM
INFORMATION_SCHEMA.Views

WHILE EXISTS (SELECT 1 FROM #grants)
BEGIN
    SELECT TOP 1 @sql = GrantStatement
    FROM #grants

    EXEC (@sql)

    DELETE #grants
    WHERE GrantStatement = @sql
END
