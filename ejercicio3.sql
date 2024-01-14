Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico)
CREATE TABLE productos (
id INT PRIMARY KEY,
nombre VARCHAR(50),
precio DECIMAL
) 	

nserta al menos cinco registros en la tabla "Productos".
INSERT INTO public.productos ( id, nombre, precio)
VALUES (1,'semilla',22.35)
VALUES (2,'abono',12.25)
VALUES (3,'trampas',60.96)
VALUES (4,'fitohormona',77.80)
VALUES (5,'fitocontrolador',80.20)

Actualiza el precio de un producto en la tabla "Productos".
UPDATE  public.productos 
SET precio = '77.25'
WHERE id = 3

Elimina un producto de la tabla "Productos"
DELETE FROM public.productos
WHERE id = 4

Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").
SELECT * FROM public.usuarios 
INNER JOIN public.productos
ON public.usuarios.id = public.productos.id 
WHERE productos.nombre ILIKE '%trampas%' 

