# caso-de-estudio

Caso de Estudio: Sistema de Inventario para Tienda de Ropa "ModaYa"
Descripción del Negocio:
"ModaYa" es una tienda multimarca que vende ropa y accesorios. Necesitan un sistema de base de datos relacional para gestionar su stock, controlar qué productos están disponibles, a qué categorías pertenecen y quiénes son sus proveedores.
Entidades Principales y Cardinalidades (Uno a Muchos):
Categoría (1) a (N) Producto: Una categoría (ej. "Vestidos", "Calzado") agrupa muchos productos, pero un producto pertenece únicamente a una categoría.
Proveedor (1) a (N) Producto: Un proveedor puede suministrar muchos productos a la tienda, pero un producto específico es provisto por un solo proveedor (quien lo fabrica o distribuye).
Producto (1) a (N) Stock_Tienda: Un producto general se divide en múltiples variaciones físicas (talla, color) en el inventario de la tienda.
Atributos de las Entidades:
Categoría: id_categoria (Llave Primaria - PK), nombre_categoria.
Proveedor: id_proveedor (PK), nombre, contacto, telefono.
Producto: id_producto (PK), id_categoria (Llave Foránea - FK), id_proveedor (FK), nombre_prenda, precio_venta, temporada.
Stock_Tienda: id_stock (PK), id_producto (FK), talla, color, cantidad_disponible.

