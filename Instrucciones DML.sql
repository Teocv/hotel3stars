#1. Del archivo de excel insertar los datos de libro, categoria, autor, editorial y pais.

#2. De la tabla categoria, eliminar la palabra tecnica y dejar únicamente arte, ciencia e historia de los id_categoria 12,13 y 14 respectivamente.
update categoria set nombre = replace(nombre, 'Tecnica ','')
where id_categoria between 12 and 14;

#3.De la tabla autor, los autores de Jhon Goodman y Pitagoras insertar el valor de Null al campo ciudad (En caso de no tener este campo deberá agregarlo de tipo char(20) no obligatorio)
update autor
set ciudad = Null 
where nombre = 'John Goodman' or nombre = 'Pi Tagoras';

#4. De la tabla libro, eliminar aquellos registros que tengan id_categoria=1  y id_autor=3
delete 
from libro 
where id_categoria = 1 and id_autor = 3; 

#5. De la tabla libro, realizar la consulta de todos los datos de los libros que sean de los años 2014,2016 y 2017 unicamente.
select *
from libro 
where fecha_publicacion = 2014 or fecha_publicacion = 2016 or fecha_publicacion = 2017; 

#6. De la tabla autor, seleccionar a todos los autores 
select nombre as Autor 
from autor;

#7. De la tabla Categoria, realizar la consulta de todos los datos que contengan el nombre de novela.
select *
from categoria where nombre = 'Novela';

#8. De la tabla autor, realizar una consulta con los datos  isbn,  titulo, id_editorial, id_autor, id_categoria y numero_paginas.
select isbn,  titulo, id_editorial, id_autor, id_categoria, no_paginas
from libro;

#9. De la tabla autor, realizar una consulta con los datos  isbn,  titulo, id_editorial, id_autor, id_categoria y numero_paginas que  no esten en la id_categoria 6,7,9.
select isbn,  titulo, id_editorial, id_autor, id_categoria, no_paginas
from libro
where id_categoria <>6 and id_categoria<>7 and id_categoria<>9;

#10. De la tabla libro, realizar una consulta con los datos  isbn,  titulo, id_editorial, id_autor, id_categoria y numero_paginas y portada pero que el numero de ejemplares sea menor o igual a 5.
select isbn,  titulo, id_editorial, id_autor, id_categoria, no_paginas, id_cubierta
from libro 
where no_ejemplares <= 5;

#11. Investigar las siguientes funciones  CONCATENAR, TRIM, LTRIM, RTRIM, SUBTR,SPACE,LOWER,UPPER, CASE





#12.De la tabla libro,realizar una consulta con los datos  isbn,  titulo, id_editorial, id_autor, id_categoria y numero_paginas y portada el cual solo mostrará aquellos libros que tengan mas de 250 hojas y su portada contenga la palabra rustica.
select isbn, titulo, id_editorial, id_autor, id_categoria,no_paginas, c.nombre 
from libro l
inner join cubierta c on c.id_cubierta = l.id_cubierta
where no_paginas > 250 
and c.nombre like '%rustica%';

#13.De la tabla autor, mostrar todos los datos de aquellos autores que inicien con la letra "l"
select * 
from autor 
where nombre like 'l%';

#14.De la tabla libro, cuentos libros son en total.
select count(*) as 'Numero de libros' 
from libro;

#15.De la tabla libro, sumar el precio de todos los libros.
select sum(precio) as 'Suma de precios' 
from libro;

#16.De la tabla  libro, contar cuantos libros tienen menos de 5 libros.
select count(*)as 'Menores a 5 ejemplares' from libro where 
no_ejemplares<5;

#17.De la tabla libro, mostrar el libro(s) que tienen el maximo numero de paginas.
select titulo, no_paginas
from libro
where no_paginas=(select max(no_paginas)from libro);

#18.De la tabla libro, mostrar el libro(s) que tienen el precio mas bajo.
select titulo, precio
from libro
where precio =(select min(precio)from libro);

#19.De la tabla libro, autor y editorial, realizar una consulta con los datos  isbn,  titulo, editorial(nombre), autor(nombre),  de todos los libros existentes.
select isbn,  titulo, e.editorial as Editorial, a.nombre as Autor
from  libro l
inner join editorial e on e.id_editorial=l.id_editorial
inner join autor a on a.id_autor=l.id_autor;

#20.De la tabla libro, autor y editorial, realizar una consulta con los datos  isbn,  titulo, editorial(nombre), autor(nombre),  de todos los libros existentes que tengan mas de 5 ejemplares.
select isbn,  titulo, e.editorial as Editorial, a.nombre as Autor
from  libro l
inner join editorial e on e.id_editorial=l.id_editorial
inner join autor a on a.id_autor=l.id_autor
where no_ejemplares > 5;

#21.De la tabla libro, autor, editorial y categoria, realizar una consulta con los datos  isbn,  titulo, editorial(nombre), autor(nombre), categoria(nombre)  de todos los libros existentes cuya categoria sea Filosofia.
select isbn,  titulo, e.editorial as Editorial, a.nombre as Autor, c.nombre as Categoria
from libro l
inner join editorial e on e.id_editorial=l.id_editorial
inner join autor a on a.id_autor=l.id_autor
inner join categoria c on c.id_categoria = l.id_categoria
where c.nombre = 'Filosofia';

#22.De la tabla libro, autor, editorial y categoria, realizar una consulta con los datos  isbn,  titulo, editorial(nombre), autor(nombre), categoria(nombre)  de todos los libros existentes cuyo autor sea Jonh Goodman y categoria Base de Datos.
select isbn,  titulo, e.editorial as Editorial, a.nombre as Autor, c.nombre as Categoria
from libro l
inner join editorial e on e.id_editorial=l.id_editorial
inner join autor a on a.id_autor=l.id_autor
inner join categoria c on c.id_categoria = l.id_categoria
where a.nombre = 'John Goodman';

#23.Cuantos libros existen del autor Jonh Goodman.
select count(*) as 'Libros J. Goodman'
from libro l 
inner join autor a on a.id_autor=l.id_autor
where a.nombre = 'John Goodman';

#24.Mostrar todas las categorias cuyo libros exedan de 200 paginas.
select c.nombre, no_paginas
from libro l
inner join categoria c on c.id_categoria = l.id_categoria
where no_paginas > 200;

#25.Mostrar todas los libros que sean del pais de chile.
select isbn, titulo, fecha_publicacion, no_ejemplares, no_edicion, precio, lugar.nombre as Pais
from libro
inner join lugar on lugar.id_lugar=libro.id_lugar
where libro.id_lugar = 4;

#26. De la tabla libro, autor, editorial y categoria, realizar una consulta con los datos  isbn,  titulo, editorial(nombre), autor(nombre), categoria(nombre) del cual se deberá mostrar solo los libros cuyo pais de la editoria inician con la letra F y A.
select isbn,  titulo, e.editorial as Editorial, a.nombre as Autor, c.nombre as Categoria, p.nombre as 'Pais Editorial'
from libro l
inner join editorial e on e.id_editorial=l.id_editorial
inner join autor a on a.id_autor=l.id_autor
inner join categoria c on c.id_categoria = l.id_categoria
inner join pais p on p.id_pais = e.id_pais
where  p.nombre like 'F%' or p.nombre like 'A%';

#27. Dela tabla libro, realizar un contador de cuantos hay por tipo de portada.
select count(*) as Cantidad, c.nombre as Cubierta
from libro l
inner join cubierta c on c.id_cubierta = l.id_cubierta
group by c.nombre;

