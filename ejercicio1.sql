Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),nombre (texto) y email (texto)
CREATE TABLE clientes (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
email VARCHAR(50)
) 	

Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email="juan@example.com"
INSERT INTO public. clientes (id,nombre,email)
VALUES (1,'Juan', 'juan@example.com')

Actualizar el email del cliente con id=1 a "juan@gmail.com"
UPDATE public. clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

Eliminar el cliente con id=1 de la tabla "Clientes".
DELETE FROM public.clientes
WHERE id = 1

Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto (texto) y cantidad (entero).
CREATE TABLE pedidos(
id SERIAL PRIMARY KEY,
producto VARCHAR (80), 
cantidad INT,
cliente_id INT NOT NULL, 
CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id ) REFERENCES clientes (id)
)
	
Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,producto="Camiseta" y cantidad=2.
INSERT INTO public.pedidos ( id, cliente_id, producto,cantidad)
VALUES (1,1,'camiseta',2)

Actualizar la cantidad del pedido con id=1 a 3.
UPDATE public.pedidos
SET cantidad = 3
WHERE id = 1;

Eliminar el pedido con id=1 de la tabla "Pedidos".
DELETE FROM public.pedidos
WHERE id = 1

Crear una tabla llamada "Productos" con las columnas: id (entero, clave primaria), nombre (texto) y preciO(decimal)
CREATE TABLE productos (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
precio DECIMAL
) 	

Insertar varios productos en la tabla "Productos" con diferentes valores.
INSERT INTO public.productos ( id, nombre, precio)
VALUES (5,'semilla',22)

Consultar todos los clientes de la tabla "Clientes".
SELECT * FROM public.clientes

Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.
SELECT * FROM public.pedidos
WHERE id = 1 AND producto = 'camiseta' 

Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.
SELECT * FROM public.productos
WHERE precio > 50

Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5.
SELECT * FROM public.pedidos
WHERE cantidad >= 5

Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra "A".
SELECT * FROM public.clientes
WHERE nombre LIKE '%A%'

Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente.
SELECT 
clientes. nombre as nombre,
pedidos.cantidad as cantidad 
FROM public.clientes 
LEFT JOIN public.pedidos 
ON public.clientes.id = public.pedidos.cliente_id 

Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto.
SELECT 
pedidos. producto as producto,
pedidos.cantidad as cantidad 
FROM public.clientes 
LEFT JOIN public.pedidos 
ON public.clientes.id = public.pedidos.cliente_id 

Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha
ALTER TABLE public.pedidos 
ADD COLUMN fecha DATE

Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto".
SELECT * FROM public.pedidos 
INNER JOIN public.productos 
ON pedidos.id = productos.id

Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa.
SELECT 
clientes.nombre as nombre,
pedidos.producto as producto,
pedidos.cantidad as cantidad 
FROM public.clientes 
INNER JOIN public.pedidos 
ON public.clientes.id = public.pedidos.cliente_id 