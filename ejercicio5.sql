Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre
(cadena de texto)
CREATE TABLE clientes(
id INT,
nombre VARCHAR (80), 
)

Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes
INSERT INTO public.clientes ( id,nombre)(
VALUES (1,'juan')
)

Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes"
UPDATE public.clientes
SET nombre = 'John Doe'
WHERE id = 1;

Elimina el cliente con id=1 de la tabla "Clientes".
DELETE FROM public.clientes
WHERE id = 1

Lee todos los clientes de la tabla "Clientes".
SELECT * FROM public.clientes

Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id
(entero).
CREATE TABLE pedidos(
id INT,
cliente_id INT, 
)

inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos".
INSERT INTO public.pedidos ( id,cliente_id)(
VALUES (1,1)
)

Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos"
UPDATE public.pedidos
SET cliente_id= '2'
WHERE id = 1;

Elimina el pedido con id=1 de la tabla "Pedidos"
DELETE FROM public.pedidos
WHERE id = 1

Lee todos los pedidos de la tabla "Pedidos".
SELECT * FROM public.pedidos

Crea una tabla llamada "Productos" con las columnas id (entero) y nombre(cadena de texto).
CREATE TABLE productos(
id INT,
nombre, VARCHAR (80), 
)
Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos".
INSERT INTO public.productos ( id,nombre)(
VALUES (1,'camisa')
)
Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla "Productos".
UPDATE public.productos
SET nombre= 'pantalon'
WHERE id = 1;

Elimina el producto con id=1 de la tabla "Productos".
DELETE FROM public.productos
WHERE id = 1

Lee todos los productos de la tabla "Productos"
SELECT * FROM public.productos

Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y producto_id (entero).
CREATE TABLE DetallesPedido(
pedido_id INT,
producto_id INT, 
)
inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla
"DetallesPedido".
INSERT INTO public.DetallesPedido ( pedido_id,producto_id)(
VALUES (1,1)
)

Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla"DetallesPedido".
UPDATE public.DetallesPedido
SET producto_id= 2
WHERE pedido_id = 1;

Elimina el detalle de pedido con pedido_id=1 de la tabla"DetallesPedido".
DELETE FROM public.DetallesPedido
WHERE pedido_id = 1 

Lee todos los detalles de pedido de la tabla "DetallesPedido".
SELECT * FROM public.DetallesPedido

Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un inner join.
SELECT * FROM public.clientes
INNER JOIN public.pedidos 
ON public.clientes.id = public.pedidos.id 

Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un left join.
SELECT * FROM public.clientes
LEFT JOIN public.pedidos 
ON public.clientes.id = public.pedidos.id 

Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un inner join.
SELECT * FROM public.productos
INNER JOIN public.DetallesPedido
ON public.productos.id = public.DetallesPedido.id 

Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un left join.
SELECT * FROM public.productos
LEFT JOIN public.DetallesPedido
ON public.productos.id = public.DetallesPedido.id 

Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla "Clientes".
ALTER TABLE public.clientes
ADD COLUMN telefono VARCHAR (60)

Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de datos a entero
ALTER TABLE public.clientes 
ALTER COLUMN telefono type  integer
ERROR:  la columna «telefono» no puede convertirse automáticamente al tipo integer

Elimina la columna "telefono" de la tabla "Clientes"
ALTER TABLE public.clientes 
DROP COLUMN telefono

Cambia el nombre de la tabla "Clientes" a "Usuarios".
ALTER TABLE clientes RENAME TO usuarios

Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a
"nombre_completo"
ALTER TABLE usuarios 
RENAME COLUMN nombre to nombre_completo

Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios".
ALTER TABLE usuarios 
ADD PRIMARY KEY (id)
