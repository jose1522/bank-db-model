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
GRANT SELECT, INSERT, UPDATE ON SCHEMA :: [dbo] TO Rol_Administrativo
