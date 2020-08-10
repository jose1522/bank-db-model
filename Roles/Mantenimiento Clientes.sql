use [BANK]
GO

-- Create login
CREATE LOGIN Mantenimiento_Clientes WITH PASSWORD = '72v4l5ZF3Xtd';
GO

-- Create user
CREATE USER Mantenimiento_Clientes FOR LOGIN Mantenimiento_Clientes;
GO

-- Create role
CREATE ROLE Rol_Mantenimiento_Clientes AUTHORIZATION Mantenimiento_Clientes;  
GO  

-- Grant Access
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Persona] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Persona_Juridica] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Persona_Fisica] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Naturaleza] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Identificacion] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Clasificacion_riesgo] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Direccion] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Email] TO Rol_Mantenimiento_Clientes
GRANT SELECT, INSERT, UPDATE, DELETE ON [dbo].[Telefono] TO Rol_Mantenimiento_Clientes
