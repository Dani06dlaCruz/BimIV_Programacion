-- Crear nuestra base de datos --
CREATE DATABASE  IF NOT EXISTS db_Usuario
-- Usa la base de datos ya creada --
USE db_Usuario
-- Crear una tabla para registrar usuarios --
CREATE TABLE IF NOT EXISTS tb_Usuario (
    id_Usuario int auto_increment primary key,
    nombre varchar (25) NOT NULL,
    dpi varchar (13) NOT NULL,
    direction varchar (25) NOT NULL,
    telefono varchar (8) NOT NULL,
    gmail varchar (30) NOT NULL UNIQUE,
    usuario varchar (15) NOT NULL UNIQUE,
    pass varchar (20) NOT NULL,
    fecha_registro timestamp default current_timestamp
    
);

-- seleccionar todos los campos de la tabla
Select * From tb_Usuario;
-- registro información --
insert into tb_Usuario(nombre, dpi, direction, telefono, gmail, usuario, pass)
values ('Gabo', '1234567891234', 'Venezuela', '67890987', 'benecoVZ@gmail.com', 'elbenequito', '6578');
-- todos los campos tienen que estar en apostrofes simples --

Select * From tb_Usuario;

-- seleccionar solo el campo del id = 2
select usuario,pass from tb_Usuario where id_Usuario = 2;
-- consulta para validar un usuario --
Select id_Usuario from tb_Usuario where usuario = 'dani777' AND pass = 'mtz2006';


