create database Hotel3Estrellas;
use Hotel3Estrellas;
create table CLIENTE(
id_cliente smallint not null primary key auto_increment,
cl_nombre varchar(20) not null,
cl_apPaterno varchar(20) not null,
cl_apMaterno varchar(20) not null,
cl_telefono varchar(15), 
cl_no_habitacion tinyint not null,
id_recepcion tinyint not null
);

create table HABITACION(
id_habitacion tinyint unsigned not null primary key auto_increment,
hbtn_tipo varchar(20) not null,
hbtn_costo numeric (7,2)not null check (hbtn_costo >500.00),
hbtn_numero tinyint unsigned not null,
hbtn_disponibilidad boolean not null,
id_recepcion tinyint not null,
id_cliente smallint not null
);

create table SERVICIO(
id_servicio tinyint not null primary key auto_increment,
srvo_tipo varchar(20) not null,
srvo_no_habitacion tinyint not null,
srvo_costo numeric (6,2)not null check (srvo_costo> 100),
srvo_no_solicitudes tinyint not null
);

create table RECEPCION (
id_recepcion tinyint not null primary key auto_increment,
id_registro int not null
);

create table RESERVACION(
id_reservacion int not null primary key auto_increment, 
id_registro int not null
);

create table REGISTRO(
id_registro int not null primary key auto_increment,
rto_cliente int not null,
rto_hora_ingreso timestamp not null default current_timestamp,
rto_hora_salida timestamp not null default current_timestamp
);

create table TIPO_PAGO(
id_tipo_pago tinyint not null primary key auto_increment,
tp_tipo_de_pago numeric (7,2) not null check (tp_tipo_de_pago>500.00),
tp_fecha timestamp not null,
id_cliente int not null auto_increment
);
create table SERVICIO_HABITACION(
id_servicio int  not null auto_increment,
id_habitacion int not null auto_increment
);
create table RESERVACION_TIPO_PAGO(
id_reservacion int not null auto_increment,
id_tipo_pago int not null auto_increment
);
create table CLIENTE_SERVICIO(
id_servicio int not null auto_increment,
id_cliente int not null auto_increment
);
