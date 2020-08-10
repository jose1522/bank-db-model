use [BANK]
GO

-- Create login
CREATE LOGIN Consulta_Operaciones WITH PASSWORD = '72v4l5ZF3Xtd';
GO

-- Create user
CREATE USER Consulta_Operaciones FOR LOGIN Consulta_Operaciones;
GO

-- Create role
CREATE ROLE Rol_Consulta_Operaciones AUTHORIZATION Consulta_Operaciones;  
GO  

-- Grant Access
GRANT SELECT ON [dbo].[Operacion] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Persona] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Sucursal] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Ejecutivo] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Garantia] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Estado_Cuenta] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Movimiento] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Desembolso] TO Rol_Mantenimiento_Clientes
GRANT SELECT ON [dbo].[Tipo_Operacion] TO Rol_Mantenimiento_Clientes
