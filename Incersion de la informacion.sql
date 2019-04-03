#Libro
insert into libro(isbn,titulo,id_autor,id_categoria,id_editorial,id_cubierta,id_lugar,fecha_publicacion,no_edicion,precio,no_paginas ,no_ejemplares)
values
('84-121-2310-1','El tránsito terreno',7,3,8,1,1,2017,1,250,152,2),
('84-7489-146-9','Sistemas operativos',16,12,5,2,2,2019,2,560,470,5),
('84-305-0473-7','Poemas intrínsecos',15,2,6,4,3,2015,1,220,173,3),
('84-473-0120-6','Avances en Arquitectura',7,3,1,1,4,2015,5,460,422,7),
('84-206-1704-0','Las balas del bien',10,5,4,1,5,2014,1,250,181,4),
('84-226-2128-2','La mente y el sentir',1,13,5,1,6,2019,2,300,196,5),
('84-7908-349-2','Ensayos póstumos',15,2,6,4,7,2013,1,420,290,12),
('84-578-0214-8','La dualidad aparente',11,8,1,3,8,2015,2,190,157,8),
('84-02-08696-9','Arquitectura y arte',17,7,4,4,8,2015,3,480,512,5),
('84-01-92101-5','Historia de Occidente',8,1,9,3,6,2017,2,390,250,7),
('84-7634-421-1','Sentimiento popular',14,4,7,2,1,2018,2,220,199,2),
('84-404-8586-7','Amigos o enemigos',5,8,8,1,6,2018,1,290,233,9),
('84-205-1101-3','La burguesía del XIX',8,1,9,3,1,2015,1,380,376,7),
('84-212-2121-2','Procesadores cuánticos',8,10,10,5,6,2018,1,420,452,4),
('84-444-0027-3','Canto de esperanza',16,14,11,5,1,2015,1,210,198,5),
('84-412-0027-4','Mastering MySQL',17,6,6,4,6,2018,2,800,890,5),
('84-422-012-5','Trigonometria avanzada',1,11,4,4,1,2014,3,540,258,2),
('84-444-0027-6','Donde esta Y?',11,8,6,2,3,2018,3,420,850,9),
('84-444-0027-7','Quimica avanzada',3,9,1,1,5,2018,1,320,999,2);

#Editorial
insert into editorial(clave,editorial,id_pais, telefono,p_contacto)
values
('ABR','Publicaciones Abreu',1,'(968)453231','Huertas, Noelia'),
('CAS','Ediciones Castell, S.A.',1,'( 96)233156','Gutiérrez, Ernesto'),
('DEL','Deloria Editores',2,'(91)3245585','Martínez, Susana'),
('GGG','GGG&G',3,'907355654','Romero, Pedro'),
('GRI','Grisham Publishing',8,'(908)122396','Brown, Jean'),
('IBE','Ediciones Ibérica',8,'(91)8767856','Guilló, Martín'),
('LAR','Larrosa Mas,S.L.',9,'(96)9887763','Ortiz, Jose'),
('MCOY','McCoy Hill',3,'(93)1219229','Del Olmo Rosa Mª'),
('MGRA','Mc Graw Hill',4,'(89)5476558','Sanches Damian'),
('PPP','Person',5,'907666654','Samuel Hdz'),
('TEC','TechiBooks',6,'(91)321146','Zapata Gustavo'),
('TTT','Trillas',7,'(96)9855763','Grillet Marquez');

#Categoria 
insert into categoria(nombre)
values
('Base de Datos'),
('Filosofia'),
('Historia'),
('Matematicas'),
('Novela'),
('Novela, filosofia'),
('Novela, Psicologia'),
('Poesia'),
('Psicologia, Ensayo'),
('Quimica'),
('Tecnica'),
('Tecnica Arte'),
('Tecnica Ciencia'),
('Tecnica History');

#Autor 
insert into autor(id_autor,nombre,id_pais,anio_nacimiento,ciudad)
values
(1,'Bazilian, Eric',6,1969,'Atlanta'),
(2,'Becket, Samuel',11,1902,'Varsovia'),
(3,'Bertomeu,Andrés',7,1919,'Barcelona'),
(4,'Chabrier, Louis',9,1892,'Toulouse'),
(5,'Davolio, Nancy',3,1970,'Canberra'),
(6,'Dion, Paul',10,1854,'Birmingham'),
(7,'Dulac, George',9,1922,'Nantes'),
(8,'John Goodman',2,1997,'Buenos Aires'),
(9,'Kröpotkin,Albert',1,1842,'Berlín'),
(10,'Leverling, Janet',6,1969,'Seattle'),
(11,'Llorens, Antonia',7,1959,'Gerona'),
(12,'Montenegro, Miguel',4,1740,'Curicó'),
(13,'Müller, Klaus',1,1720,'Düsseldorf'),
(14,'Pi Tagoras',7,1888,'Granada'),
(15,'Plasencia,Juan Luis',7,1960,'Toledo'),
(16,'Richter, Helmut',1,1911,'Dresde'),
(17,'Sanabria, Carmelo',7,1963,'Salamanca'),
(18,'Santos, Miguel',5,1865,'Medellín'),
(19,'Uosiken, Fred',8,1958,'Helsinki');

#Paises
insert into pais(id_pais,nombre)
values
(1,'Alemania'),
(2,'Argentina'),
(3,'Australia'),
(4,'Chile'),
(5,'Colombia'),
(6,'EEUU'),
(7,'España'),
(8,'Finlandia'),
(9,'Francia'),
(10,'Gran Bretaña'),
(11,'Polonia');

#Cubierta
insert into cubierta(nombre)
values
('Cartoné'),
('Espiral'),
('Grapada'),
('Rustica Cosida'),
('Rustica Fresada');

#Lugar
insert into lugar(nombre)
values
('Alemania'),
('Canada'),
('Dinamarca'),
('Chile'),
('España'),
('Francia'),
('Inglaterra'),
('Mexico');

