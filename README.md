# caso-de-estudio

Prompt usado para el ejercicio

Actúa como un profesor de Bases de Datos Relacionales e Ingeniero de Software Senior. 

Voy a darte el archivo XML (Draw.io) de un Modelo Entidad-Relación (MER) titulado "Inventario Tienda de Ropa". 

Tus objetivos son:
1. Extraer la estructura exacta del MER.
2. Explicar el proceso de transformación a Modelo Relacional.
3. Entregar el código SQL listo para ejecutar sin errores.
4. Diseñar consultas DQL que resuelvan necesidades reales del negocio.

---

### ESTRUCTURA EXTRAÍDA DEL DIAGRAMA:
* Categoria (idCategoria [PK], nombre) -> Clasifica (1:N) -> Producto.
* Proveedor (idProveedor [PK], nombre, telefono) -> Suministra (1:N) -> Producto.
* Producto (idProducto [PK], nombre, talla, color, precio, stock) -> Contiene (1:N) -> DetalleVenta.
* Venta (idVenta [PK], fecha, total) -> Incluye (1:N) -> DetalleVenta.
* DetalleVenta (idDetalle [PK], cantidad, subtotal).
* Cliente (idCliente [PK], nombre, telefono) -> Realiza (1:N) -> Venta.
* Empleado (idEmpleado [PK], nombre, cargo) -> Atiende (1:N) -> Venta.

---

### SECCIONES DE LA RESPUESTA REQUERIDA:

#### 1. Mapeo a Tabla Relacional (Explicación paso a paso)
- Lista cada tabla indicando sus columnas, tipos de datos recomendados (VARCHAR, INT, DECIMAL, DATE), Claves Primarias (PK) y Claves Foráneas (FK).
- Explica brevemente por qué las FK se ubican en la tabla del lado 'N' de cada relación.

#### 2. Script DDL (Creación de Base de Datos y Tablas en SQL)
- Escribe el código SQL para crear la base de datos `tienda_ropa`.
- Crea las 7 tablas asegurando la sintaxis estándar (compatible con MySQL / PostgreSQL).
- Incluye restricciones clave: `PRIMARY KEY`, `FOREIGN KEY` (con `ON DELETE CASCADE` o `RESTRICT` según corresponda), `NOT NULL` y un `CHECK` para evitar precios o stocks negativos.
- Asegúrate de crear las tablas en el orden correcto para evitar errores de referencia de claves foráneas.

#### 3. Script DML (Poblado de datos de prueba)
- Genera datos de prueba realistas para una tienda de ropa comercial.
- Inserta al menos 3 a 5 registros válidos por cada tabla, respetando la coherencia técnica (ej. que los subtotales de DetalleVenta coincidan con cantidad * precio, y que las FKs referencien IDs existentes).

#### 4. Consultas DQL (Casos de uso del negocio)
Proporciona el código SQL con comentarios explicativos para resolver los siguientes 5 escenarios:
1. **Inventario por Categoría:** Consultar todos los productos junto con el nombre de su categoría y su proveedor.
2. **Historial de Ventas Completo:** Listar las ventas con la fecha, nombre del cliente, nombre del empleado que lo atendió y el total acumulado.
3. **Detalle de la Factura:** Dado un `idVenta` específico, mostrar los productos comprados, cantidad, precio unitario y subtotal.
4. **Top Productos:** Obtener los 3 productos más vendidos (sumando las cantidades en `DetalleVenta`).
5. **Rendimiento de Empleados:** Calcular el total vendido (en dinero) acumulado por cada empleado.

#### 5. Recomendación de Arquitectura (Opcional)
- Menciona qué índice (INDEX) valdría la pena agregar para optimizar el rendimiento de la base de datos cuando la tabla de ventas crezca a miles de registros.
