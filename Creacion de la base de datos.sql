#1. crear una base de datos llamada libreria_rokefeler

create database libreria_rokefeler;


#2. crear todas las tablas del modelo entidad-relación normalizados hasta la 3ra forma normal(Anexo Archivo paso4_Paso6_normalizacion_libreria

use libreria_rokefeler;

create table LIBRO
(id_libro integer unsigned not null primary key auto_increment,
ISBN varchar(18) not null,
nombre varchar (100) not null,
id_autor smallint not null,
id_editorial smallint not null,
fecha_publicacion int not null,
id_categoria tinyint not null,
id_cubierta tinyint not null,
id_lugar tinyint,
no_ejemplares smallint not null
);

create table CLIENTE
(id_cliente integer unsigned not null primary key auto_increment,
no_cliente varchar (5) not null,
nombre char (50) not null,
ap_paterno char (30) not null,
ap_materno char (30) not null,
calle varchar (50),
no_exteriror varchar (10),
no_interior varchar (10),
colonia varchar (10),
poblacion varchar (20),
municipio char (20),
id_pais smallint not null,
cp varchar (5) not null,
telefono varchar (15),
referencia varchar (255)
);

create table EDITORIAL
(id_editorial smallint not null primary key,
clave varchar (5) not null,
nombre char (50) not null,
telefono varchar (15) not null,
email varchar (50)null,
p_contacto varchar (50),
pagina_web varchar (50),
id_pais smallint
);

create table AUTOR
(id_autor integer not null,
nombre char (50) not null,
email char (50),
id_pais varchar(50),
anio_nacimiento int,
ciudad varchar(50),
primary key (id_autor)
);

create table BAUCHER
(id_baucher integer not null primary key auto_increment,
fecha datetime not null,
id_banco tinyint not null,
folio varchar (30) unique,
monto numeric (6,2) default 0.00
);

create table BANCO
(id_banco tinyint not null primary key auto_increment,
nombre char(30) not null
);

create table CATEGORIA
(id_categoria tinyint not null primary key auto_increment,
nombre char (30) not null unique
);

create table CARRITO
(id_carrito integer not null primary key auto_increment,
folio int not null unique,
id_cliente integer not null,
anio smallint,
id_tipo_pago tinyint not null,
id_tipo_venta tinyint not null,
estado_venta char(1) not null,
fecha datetime not null,
id_usuario smallint not null,
id_baucher int
);


create table PAIS
(id_pais smallint not null primary key,
nombre char(30) not null
);

create table USUARIO
(id_usuario smallint not null primary key auto_increment,
nombre char(15) not null,
contrasenia varchar(8) not null,
fecha_baja datetime
);

create table TIPO_VENTA
(id_tipo_venta tinyint not null primary key auto_increment,
clave varchar(5),
nombre char(10) not null
);

create table TIPO_PAGO
(id_tipo_pago tinyint not null primary key auto_increment,
clave varchar(5),
nombre char(15) not null
);

create table ClIENTE_CARRITO(
	id_cliente int not null,
	id_carrito int not null 
);

create table CARRITO_LIBRO(	
	id_libro int not null,
	id_carrito int not null,
	cantidad smallint not null,
	precio numeric(6,2) not null
);

create table AUTOR_LIBRO(
	id_libro int not null,
	id_autor int not null,
	cantidad smallint
);

create table CUBIERTA(
	id_cubierta int not null primary key auto_increment,
	nombre varchar(30)
);

create table LUGAR(
	id_lugar int not null primary key auto_increment,
	nombre varchar(30)
);

#3. agregar las siguientes restricciones
#De la tabla libro ...
alter table LIBRO
add no_edicion tinyint not null,
add precio decimal(6,2) not null,
add cubierta char(15),
add no_paginas int,
modify column ISBN varchar(18) not null unique,
change nombre titulo varchar (100) not null;

#De la tabla cliente...
alter table CLIENTE
add unique (no_cliente),
add unique (telefono),
modify calle varchar (120); 

#De la tabla editorial (el nombre cambiarlo por editorial de varchar(80) y el id_pais cambiarlo por smallint y su primary key sea autoincrementable)
alter table EDITORIAL 
change nombre editorial varchar(80),
modify id_pais smallint,
modify id_editorial smallint not null auto_increment;


#De la tabla carrito (la fecha sea por default ...
alter table CARRITO modify fecha datetime not null default Now();

#De la tabla carrito_libro(refernciar  los fk de sus tablas principales, que la cantidad sea mayor de 0 y el precio mayor a 10.00)
alter table CARRITO_LIBRO add check (cantidad>0 and precio>10.00);

#De la tabla autor_libro(la cantidad al menos sea de 1)
alter table AUTOR_LIBRO add check (cantidad>=1);

#De la tabla banco, categoria, pais y usuario sean autoincrementable su pk)
alter table BANCO modify id_banco int not null auto_increment;
alter table CATEGORIA modify id_categoria int not null auto_increment;
alter table PAIS modify id_pais int not null auto_increment;
alter table USUARIO modify id_usuario int not null auto_increment;
