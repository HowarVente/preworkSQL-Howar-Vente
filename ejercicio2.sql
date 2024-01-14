Crea una base de datos llamada "MiBaseDeDatos".
CREATE DATABASE "MiBaseDeDatos"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).
CREATE TABLE usuarios (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
edad INT
) 	

Inserta dos registros en la tabla "Usuarios".
INSERT INTO public. usuarios (id,nombre,edad)
VALUES (1,'angel', '50')
VALUES (2,'ana', '33')

Actualiza la edad de un usuario en la tabla "Usuarios".
UPDATE public. usuarios
SET edad = '31'
WHERE id = 2;

Elimina un usuario de la tabla "Usuarios".
DELETE FROM public.usuarios
WHERE id = 2

Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).
CREATE TABLE ciudades (
id SERIAL PRIMARY KEY,
nombre VARCHAR(80),
pais VARCHAR(80)
) 	
Inserta al menos tres registros en la tabla "Ciudades".
INSERT INTO public.ciudades (id,nombre,pais) 
VALUES(1,'bogota', 'colombia')
VALUES(2,'roma', 'italia')
VALUES(3,'buenos aires', 'argentina')

Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"de la tabla "Ciudades"
ALTER TABLE public.usuarios 
ADD CONSTRAINT ciudades_pkey FOREIGN KEY (id ) REFERENCES ciudades (id)

Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN)
SELECT 
usuarios.nombre as nombre,
ciudades.nombre as nombre,
ciudades.pais as pais 
FROM public.usuarios 
LEFT JOIN public.ciudades 
ON public.usuarios.id = public.ciudades.id 

Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).
SELECT
usuarios.nombre as nombre
FROM public.usuarios 
INNER JOIN public.ciudades
ON public.usuarios.id = public.ciudades.id 
WHERE public.ciudades.nombre LIKE '%b%' 

