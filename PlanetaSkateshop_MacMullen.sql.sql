
/*CREACION DE BASE DE DATOS Y DARLE USO A LA MISMA */

Create database PlanetaSkateshop;
use PlanetaSkateshop;


/*CREACION DE TABLA CATEGORIA*/

CREATE TABLE Categoria (
    Id_cat INT PRIMARY KEY AUTO_INCREMENT,
    Name_cat VARCHAR(255),
    Description varchar(255)
);

/*CREACION TABLA PRODUCTO*/

create table Producto (

Id_product int primary key auto_increment,
Name_product varchar(255),
Description varchar(255),
precio float,
Stock_dispo int,
Id_cat int,
foreign key (Id_cat) references Categoria(Id_cat)

);

/*CREACION TABLA CLIENTES*/


create table Clientes (
Id_cliente int primary key auto_increment,
Nombre text,
Last_Name text,
Email text,
direct text,
Phone text,
sexo text,
Fecha_Registro date


);


/* CORRECION A LA MISMA TABLA*/
ALTER TABLE Clientes
MODIFY COLUMN Nombre VARCHAR(255) ,
MODIFY COLUMN Last_Name VARCHAR(255),
MODIFY COLUMN Direct VARCHAR(255), 
MODIFY COLUMN Phone VARCHAR(20),  
MODIFY COLUMN Sexo ENUM('Masculino', 'Femenino', 'Otro');  

ALTER TABLE Clientes
MODIFY COLUMN Email varchar(255);

ALTER TABLE Clientes
MODIFY COLUMN Id_cliente int  NOT NULL  auto_increment,
MODIFY COLUMN Nombre VARCHAR(255) NOT NULL,
MODIFY COLUMN Last_Name VARCHAR(255) NOT NULL,
MODIFY COLUMN Direct VARCHAR(255) NOT NULL, 
MODIFY COLUMN Phone VARCHAR(20) NOT NULL,  
MODIFY COLUMN Sexo ENUM('Masculino', 'Femenino', 'Otro') NOT NULL, 
MODIFY COLUMN Email varchar(255) NOT NULL;

/*CREACION TABLA VENTAS*/

create table ventas (
Id_venta int primary key auto_increment,
Id_cliente int,
total float,
Fecha_venta date,
foreign key (Id_cliente) references Clientes(Id_cliente)
);


/*CREACION TABLA DETALLE DE VENTAS*/

create table Detalle_Ventas (
Id_detalle int primary key auto_increment,
Id_venta int,
Id_product int,
Cant int,
P_unitario float,
Sub float,
foreign key (Id_venta) references Ventas(Id_venta),
foreign key (Id_product) references Producto(Id_product)


);






