Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y  "id_producto" (entero, clave foránea de la tabla "Productos").
CREATE TABLE pedidos(
id SERIAL PRIMARY KEY,
referencias VARCHAR (80), 
cantidad INT,
usuario_id INT NOT NULL, 
CONSTRAINT FK_usuario_id FOREIGN KEY (usuario_id ) REFERENCES usuarios (id)
ALTER TABLE public.pedidos 
ADD COLUMN producto_id INT NOT NULL,
ADD CONSTRAINT FK_producto_id FOREIGN KEY (producto_id ) REFERENCES productos (id)
)

Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.
INSERT INTO public.pedidos ( id, referencias,cantidad,usuario_id,producto_id)
VALUES (1,'semilla',12,2,1)
VALUES (2,'semilla',20,2,3)
VALUES (3,'trampas',5,3,3)
VALUES (4,'abono',10,3,2)
VALUES (5,'abono',12,1,2)

Realiza una consulta que muestre los nombres de los usuarios que han
realizado un pedido, pero también los que no han realizado ningún pedido
(utiliza LEFT JOIN).
SELECT * FROM public.usuarios 
LEFT JOIN public.pedidos
ON public.usuarios.id = public.pedidos.id 
WHERE cantidad >1

Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)
ALTER TABLE public.pedidos 
ADD COLUMN cantidad cantidad INT,
AND UPDATE public.pedidos
SET referencia = pasto
WHERE id = 1;