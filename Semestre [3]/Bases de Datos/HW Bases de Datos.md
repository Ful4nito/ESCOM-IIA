---
cssclasses:
  - HWK
---
---
## Unidad I
### Cuestionario Fundamentos de Bases de Datos
__07 SEPTIEMBRE 25__

1. ¿Qué es un dato, qué es información y cual es la diferencia entre las dos ?
	Un dato es hecho o un valor que puede ser de cualquier tipo y que no se relaciona de ninguna manera con otros datos
	La Información es un conjunto de datos que se pueden interpretar, se relacionan entre si esto les da un significado.
	Es el resultado de 
	 
2. ¿Qué es una base de datos?
	Una base de datos es una recopilación organizada de datos e información, almacenada de forma electrónica y sistemática en un sistema informático, que permite a los usuarios almacenar, gestionar, acceder y recuperar información de manera rápida y segura.
	
3. Explica brevemente las propiedades de una base de datos.
	- **Independencia de datos**: Los datos están separados de los programas que los usan, permitiendo cambios sin afectar a las aplicaciones.
	- **Reducción de redundancia**: Almacena los datos una sola vez, evitando duplicaciones innecesarias.
	- **Integridad**: Garantiza la exactitud y consistencia de los datos mediante restricciones y reglas (por ejemplo, claves primarias).
	- **Seguridad**: Controla el acceso a los datos, protegiéndolos de usuarios no autorizados.
	- **Acceso concurrente**: Permite que varios usuarios accedan y modifiquen los datos al mismo tiempo sin conflictos.
	- __Respaldo y recuperación__ Permite guardar copias de seguridad y restaurar los datos en caso de fallos.
	- __Consultas eficientes__ Usa lenguajes como SQL para acceder rápidamente a la información deseada.

4. ¿Cuál es la diferencia entre un sistema de bases de datos y un sistema de gestión de bases de datos?
	La base de datos es una recopilación organizada de datos e información, almacenada de forma electrónica y sistemática en un sistema informático.
	Los SGBD es el software que administra estas bases de datos, controla el acceso, la seguridad y las consultas.
	
5. Menciona tres posibles aplicaciones de las bases de datos, indicando como seria su uso.
	- __Bancos:__ Manejo de cunetas, transacciones y clientes.
	- __Hospitales:__ Historial clínico de pacientes, citas, etc.
	- __Comercios:__ Registro de productos, clientes, pedidos y pagos.

6. Explica brevemente los 7 problemas que se podrían presentar si no se utiliza un gestor de bases de datos.
	- __Redundancia de datos__ datos duplicados
	- __Inconsistencia de los datos__ Información contradictoria
	- __Dificultad de acceso a los datos__ el acceso seria manual
	- __Falta de integridad__ datos incompletos o inválidos 
	- __Falta de seguridad__ cualquiera podría acceder
	- __Problemas con el acceso concurrente__ errores si varios usuarios acceden a los datos al mismo tiempo

7. Describe las características de un sistema gestor de bases de datos.
	- Manejo de grandes volúmenes de datos
	- Soporte para múltiples usuarios a la vez
	- Respaldo y recuperación de datos
	- Seguridad y control de accesos
	- Optimización de consultas

8. Describe las funciones de los cuatro grupos de usuarios de las bases de datos.
	1 __Administradores:__ Encargados de la seguridad, mantenimiento, respaldo y rendimiento.
	2 __Diseñadores de Bases de datos__: Definen la estructura, relaciones y reglas de la base de datos.
	3 __Desarrolladores:__ Desarrollan aplicaciones y programas que hacen uso de la base de datos.
	4 __Usuarios finales:__ Usan la base de datos para consultar o ingresar datos.

9. Describe el ciclo de vida de un sistema de bases de datos.
    - __Viabilidad__
    - __Análisis de requerimientos__
    - __Diseño__ (conceptual, lógico, físico)
    - __Implementación__
    - __Pruebas__
    - __Despliegue__
    - __Mantenimiento__
    - __Evolución__
    - __Retiro__


### Cuestionario Modelo de Datos
__09 SEPTIEMBRE 25__

1. ¿Qué es un modelo de datos?
	Un modelo de datos es una representación abstracta que describe cómo se organizan, almacenan y manipulan los datos en una base de datos, incluyendo estructuras, relaciones y restricciones.

2. ¿Qué es un modelo de datos de alto nivel o conceptual?
	Es un modelo que representa los datos desde una perspectiva del usuario, mostrando qué datos existen y cómo se relacionan, sin preocuparse por cómo se almacenan físicamente. Ejemplo: Modelo entidad-relación (E-R).

3. ¿Qué es un modelo de bajo nivel o físico?
	Es un modelo que describe cómo se almacenan realmente los datos en el sistema, incluyendo estructuras de almacenamiento, índices, bloques de disco, etc. Es dependiente del hardware y del SGBD.

4. ¿Qué es un modelo lógico?
	Es un modelo que representa los datos a un nivel intermedio, más cercano al usuario que al almacenamiento físico, pero más detallado que el conceptual. Ejemplo: Modelo relacional (tablas, atributos, claves).

5. Describe brevemente los 3 niveles de la arquitectura ANSI/SPARC de los sistemas de bases de datos.
	- __Nivel externo__ Vista del usuario. Define cómo cada usuario ve los datos.
	- __Nivel conceptual__ Vista global del sistema. Muestra qué datos hay y cómo se relacionan.
	- __Nivel interno__ Nivel físico. Describe cómo se almacenan los datos en el hardware.

6. ¿A que nos referimos cuando hablamos de la independencia lógica e independencia física de los datos?
	- __Independencia lógica__ Capacidad de modificar el esquema conceptual (como agregar campos o tablas) sin afectar las vistas de los usuarios o las aplicaciones.
    - __Independencia física__ Capacidad de cambiar el esquema interno (forma de almacenamiento, índices, etc.) sin afectar el esquema conceptual.

6. Describe brevemente a los elementos de la arquitectura de un SGBD
	- __Motor de almacenamiento__ Administra el almacenamiento físico de los datos.
    - __Procesador de consultas__ Interpreta y ejecuta las consultas (SQL).
    - __Administrador de transacciones__ Controla la integridad y consistencia durante operaciones múltiples.
    - __Administrador de usuarios__ Controla el acceso y permisos.
    - __Catálogo del sistema__ Guarda metadatos sobre la estructura y permisos.

6. En un sistema cliente servidor, cual es la diferencia entre cliente y servidor
	- __Cliente__ Solicita servicios o datos al servidor. Normalmente es la interfaz de usuario (por ejemplo, una aplicación).
    - __Servidor__ Procesa las solicitudes del cliente y devuelve los resultados. Suele contener la base de datos y lógica de negocio.

7. Suponga un sistema cliente servidor de una tienda. Diga en donde se encuentra o ejecuta lo siguiente (cliente o servidor)

| ACCION                                                               | CLIENTE O SERVIDOR |
| -------------------------------------------------------------------- | :----------------: |
| La base de datos                                                     |      Servidor      |
| El software de punto de venta                                        |      Cliente       |
| Datos físicos de los clientes                                        |      Servidor      |
| Calculo de totales de ventas                                         |      Servidor      |
| Obtención de información acerca del total de clientes por delegación |      Servidor      |
| Llenado de la forma de alta de un cliente                            |      Cliente       |

### Cres Base de Datos Tienda

``` sql
-- BASE DE DATOS TIENDA
CREATE TABLE PRODUCTO(
	IdProducto SERIAL PRIMARY KEY,
	IdProveedor INT,
	Nombre VARCHAR(50),
	PrecioCompra NUMERIC(10,2),
	PrecioSugerido NUMERIC(10,2),
	PrecioMinimo NUMERIC(10,2),
	Descripcion VARCHAR(400),
	CodigoBarras VARCHAR(20),
	Existencia INT
);

CREATE TABLE PROVEEDOR(
	IdProveedor SERIAL PRIMARY KEY,
	Nombre VARCHAR(50)
);

CREATE TABLE VENTA(
	IdVenta SERIAL PRIMARY KEY,
	IdCliente INT,
	Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PRODUCTOVENDIDO(
	IdProductoVendido SERIAL PRIMARY KEY,
	IdProducto INT,
	Cantidad INT,
	IdVenta INT,
	PrecioVenta NUMERIC(10,2)
);

CREATE TABLE CLIENTE(
	IdCliente SERIAL PRIMARY KEY,
	Nombre VARCHAR(40),
	ApellidoP VARCHAR(30),
	ApellidoM VARCHAR(30),
	FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FechaNacimiento DATE,
	Telefono VARCHAR(15),
	RFC CHAR(13),
	CorreoElectronico VARCHAR(100),
	Pais VARCHAR(50),
	Estado VARCHAR(50),
	Alcaldia VARCHAR(50),
	Colonia VARCHAR(50),
	Calle VARCHAR(50),
	NumeroI VARCHAR(10),
	NumeroE VARCHAR(10),
	CodigoPostal CHAR(5),
	Credito NUMERIC(10,2),
	Deuda NUMERIC(10,2)
);
```

### Practica Laboratorio 1

[[01T Creacion, modificacion y borrado de tablas|EXPLICACION]]
[[01E Creacion, modificacion y borrado de tablas|INSTRUCCIONES]]

___Ejercicio 1_ BD ESCUELA__
``` sql
CREATE TABLE profesores (
	Nombre VARCHAR(50),
	FechaNacimiento DATE,
	FechaIngreso DATE,
	Salario NUMERIC(10,2)
);

CREATE TABLE salon (
	Codigo INT,
	Descripcion VARCHAR(200)
);

CREATE TABLE alumno (
	Nombre VARCHAR(50),
	FechaNacimiento DATE,
	Promedio NUMERIC(4,2)
);
```

___Ejercicio 2_ BD TALLER MECANICO__
``` SQL
CREATE TABLE colaboradores (
	Nombre VARCHAR(50),
	FechaIngreso DATE
);

CREATE TABLE refaccion (
	Nombre VARCHAR(50),
	FechaLlegada DATE,
	FinGarantia DATE
);

CREATE TABLE auto (
	Marca VARCHAR(30),
	Modelo VARCHAR(20),
	Fallas VARCHAR(250)
);
```

### Practica Laboratorio 2

[[02T Insercion, modificacion y eliminacion de datos|EXPLICACION]]
[[02E Insercion, modificacion y eliminacion de datos|INSTRUCCIONES]]

___Ejercicio 1_ TABLA ALUMNOS__
```sql
-- [A] DAR DE ALTA 3 ALUMNOS
INSERT INTO Alumnos (IdAlumno, Nombre, ApPaterno, ApMaterno, Promedio, FechaIngreso)
	VALUES  (2010300294, 'Jenipher', 'Garcia', 'Montez', 10, '2010 02 02'),
			(2012309276, 'Brandon', 'Garcia', 'Ruiz', 9, '2011 08 05'),
			(2025301892, 'Brenda', 'Alcantara', 'Lopez', 8.2, '2025 01 05');
	
-- [B] MODIFICA LA CALIFICACION DE 2 ALUMNOS
UPDATE Alumnos
	SET Promedio = 9.1
	WHERE IdAlumno = 2010850294; -- Jenipher

UPDATE Alumnos
	SET Promedio = 7.3
	WHERE IdAlumno = 2012301892; -- Brenda

-- [C] MODIFICA LA FECHA DE INGRESO DE 2 ALUMNOS
UPDATE Alumnos
	SET FechaIngreso =  '2026 08 17'
	WHERE IdAlumno = 2012309276; -- Brandon
	
UPDATE Alumnos
	SET FechaIngreso = '2007 08 14'
	WHERE IdAlumno = 2010300294; -- Jenifer

-- [D] ELIMINA A UNO DE LOS ALUMNOS
DELETE FROM Alumnos
	WHERE IdAlumno = 2025301892; -- Brenda
```

___Ejercicio 2_ TABLA AUTO__
modelo, marca, color y placas. 
```sql
-- [A] DA DE ALTA 4 AUTOS DIFERENTES
INSERT INTO Auto (Modelo, Marca, Color, Placa)
	VALUES  ('Camry', 'Toyota', 'Gris', 'MKR-048-A'),
			('93', 'Saab', 'Gris', 'IDL-953-F'),
			('M4', 'BMW', 'Azul', 'MLS-191-C'),
			('Tiguan', 'VolksWagen', 'Blanco', 'XPV-381-B');
	
-- [B] MODIFICA EL COLOR DE UNO DE LOS CARROS REGISTRADOS
UPDATE Auto
	SET Color = 'Negro'
	WHERE Modelo = '93';

-- [C] ELIMINAR 2 CARROS
DELETE FROM Auto
	WHERE Placa = 'MKR-048-A';
	
DELETE FROM Auto
	WHERE Placa = 'IDL-953-F';

```

___Ejercicio 3_ TABLA MATERIA__
```sql
-- [A] REGISTRAR MATERIAS Y ELIMINAR
INSERT INTO Materia (IdMateria, Nombre, Nivel, Creditos)
	VALUES  ('B101', 'Matematicas', '1', 8),
			('B102', 'Fisica', '1', 8),
			('B103', 'Español', '1', 8),
			('B201', 'Quimica', '2', 10),
			('B202', 'Ingles', '2', 10),
			('B203', 'Programacion', '2', 10);


DELETE FROM Materia
	WHERE Materia = 'Ingles';
	
DELETE FROM Materia
	WHERE Materia = 'Quimica';

-- [B] ACTUALIZAR CREDITOS DE MATERIAS DE PRIMER NIVEL
UPDATE Materia
	SET Creditos = 8.5
	WHERE Nivel = '1';
	
-- [C] ELIMINAR MATERIAS DE PRIMER NIVEL
DELETE FROM Materia
	WHERE Nivel = '1';

-- [D] AGREGAR MATERIA DE TERCER NIVEL
INSERT INTO Materia (IdMateria, Nombre, Nivel, Creditos)
	VALUES ('B301', 'Calculo', '3', 10);
```

___Ejercicio 4_ INSERTAR REGISTROS EN BD TIENDA__
``` sql

-- [A] REGISTRAR A 10 CLIENTES
INSERT INTO CLIENTE (IdCliente, Nombre, ApellidoM, ApellidoP, FechaRegistro, FechaNacimiento, Telefono, RFC, CorreoElectronico, Pais, Estado, Alcaldia, Colonia, Calle, NumeroI, NumeroE, CodigoPostal, credito, deuda)
VALUES 
(1, 'Jose', 'Alvarado', 'Gonzales', CURRENT_TIMESTAMP, '1992-04-23', '5532782945', 'ALGJ920423CJ6', 'jose8374@gmail.com', 'Mexico', 'CDMX', 'Gustavo A. Madero', 'Zacatenco', 'La Rioja', 'S/N', '17', '07384', 45000, 6700),
(2, 'Carlos', 'López', 'Ramírez', CURRENT_TIMESTAMP, '1990-05-14', '5512345678', 'LORC900514HDF', 'carlos.lopez@gmail.com', 'México', 'CDMX', 'Iztapalapa', 'Iztapalapa', 'Ermita', NULL, 74, 09800, 3000.00, 0.00),
(3, 'Ana', 'Martínez', 'Hernández',	CURRENT_TIMESTAMP, '1987-08-22', '5623456789', 'MAHA87082298B', 'ana.martinez@outlook.com', 'México', 'CDMX', 'Benito Juárez', 'Centro', 'Hidalgo', '2B', 145, 06000, 5000.00, 1200.00),
(4, 'Alfonso', 'Sánchez', 'Gómez', CURRENT_TIMESTAMP, '1995-11-02', '5534567890', 'SAGB951102356', 'brandon.sanchez@outlook.com', 'México', 'Edomex', 'Naucalpan', 'Roma Norte', 'Durango', NULL, 32, 06700, 7500.00, 0.00),
(5, 'Jenifer', 'García', 'Torres', CURRENT_TIMESTAMP, '1992-01-19', '5645678901', 'GATJ920119C04', 'jenifer.garcia@outlook.com', 'México', 'CDMX', 'Coyoacán', 'Del Valle', 'Insurgentes Sur', '5A', 10, 03100, 10000.00, 3500.00),
(6, 'Luis', 'Pérez', 'Domínguez', CURRENT_TIMESTAMP, '1985-07-30', '2226789012', 'PEDL850730N8W', 'luis.perez@gmail.com', 'México', 'Puebla', 'Puebla Centro', 'Narvarte', 'Xola', NULL, 45, 03020, 6000.00, 6000.00),
(7, 'Martha', 'Flores', 'Vega', CURRENT_TIMESTAMP, '1998-03-25', '5667890123', 'FOVM980325BUN', 'martha.flores@outlook.com', 'México', 'CDMX', 'Álvaro Obregón', 'Polanco', 'Masaryk', '1', 78, 11560, 15000.00, 2000.00),
(8, 'Jorge', 'Ruiz', 'Castillo', CURRENT_TIMESTAMP, '1993-09-10', '3378901234', 'RUJC93091035N', 'jorge.ruiz@gmail.com', 'México', 'Jalisco', 'Guadalajara', 'Santa María la Ribera', 'Cedro', NULL, 12, 06400, 4000.00, 500.00),
(9, 'Sofía', 'Ramírez', 'Morales', CURRENT_TIMESTAMP, '2000-12-05', '8189012345', 'RASM001205MDF', 'sofia.ramirez@gmail.com', 'México', 'Nuevo León', 'Monterrey', 'Coyoacán', 'Miguel Ángel de Quevedo', '3C', 91, 04000, 8000.00, 1000.00),
(10, 'Melanie', 'Bautista', 'Alcantara', CURRENT_TIMESTAMP, '1984-12-06', '7723983940', 'BAAM841206I64', 'melanie25.d@outlook.com', 'Mexico', 'Hidalgo', 'Pachuca de Soto', 'San Ángel', 'Revolución', '4', 13, 01000, 9000.00, 4500.00);
	
-- [B] REGISTRAR PROVEEDORES
INSERT INTO PROVEEDOR (IdProveedor, Nombre)
	VALUES  (1, 'LG'),
			(2, 'Yamaha'),
			(3, 'Samsung'),
			(4, 'Sony'),
			(5, 'Dell'),
			(6, 'HP');
			
-- [C] REGISTRAR PRODUCTOS
INSERT INTO PRODUCTO (Idproducto, IdProveedor, Nombre, Existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
	VALUES  (1, 1, 'Tele', 30, 5000,4000, 3000),
			(2, 1, 'DVD', 20, 1500, 1000, 900),
			(3, 1, 'Celular', 3, 2000,2000, 1200),
			(4, 2, 'Pantalla', 5, 15000,14000, 10000),
			(5, 2, 'BlueRay', 10, 5500,5300, 5000),
			(6, 3, 'Mp3 Player', 13, 900, 900, 500),
			(7, NULL, 'Compu', 15, 19000, 17000, 115000);
			
-- [D] REGISTRAR LAS VENTAS
-- VENTA 1
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES (1, 2, '2020/09/15 14:37:26');

INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES  (1, 3, 2, 1, 2000),
			(2, 6, 1, 1, 900),
			(3, 5, 3, 1, 5500);

-- VENTA 2  
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES (2, 5, '2020/09/17 09:18:53');
	
INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES  (4, 5, 2, 2, 5500),
			(5, 1, 1, 2, 5000);

-- VENTA 3
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES  (3, 2, '2020/09/17 13:15:07');
	
INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES (6, 4, 2, 3, 15000);
```

### Practica Laboratorio 3

[[03T Sintaxis proyeccion|EXPLICACION]]
[[03E Ejercicios proyeccion|INSTRUCCIONES]]

```sql
Alumno:JONATHAN LEON BAEZ PACHECO
Grupo:3BV2
Profesor: EDGAR A. CATALAN SALGADO
--------------------------------------------------------------------------               
-- 1. Muestra el texto fijo Hola humano y el numero 5000
	SELECT 'Hola Humano', '5000';
	
-- 2. Muestra el nombre de los clientes
	SELECT Nombre 
	FROM Cliente;
	
-- 3. Muestra el texto fijo Hola y el nombre de los clientes
	SELECT 'Hola' ||' '|| nombre as "Saludo"
	FROM Cliente;

-- 4. Muestra el nombre de los clientes y el numero 300
	SELECT nombre, '300'
	FROM Cliente;

-- 5. Muestra el texto hola, el nombre del cliente y el numero 0
	SELECT 'Hola', nombre, '0'
	FROM Cliente;

-- 6. Muestra apellido paterno, materno y nombre de los clientes
	SELECT ApellidoP, ApellidoM, Nombre
	FROM Cliente;

-- 7. Muestra nombre, apellido paterno y materno de los clientes
	SELECT Nombre, ApellidoP, ApellidoM
	FROM Cliente;

-- 8. Muestra Id, nombre, apellido paterno y rfc de los clientes
	SELECT Idcliente, Nombre, ApellidoP, rfc
	FROM Cliente;

-- 9. Muestra apellido paterno y los datos de dirección de los clientes
	SELECT ApellidoP, Calle, NumeroE, Colonia, CodigoPostal, Alcaldia, Estado
	FROM Cliente;

-- 10. Muestra apellido paterno, materno, nombre, su cr�dito y deuda de los clientes
	SELECT ApellidoP, ApellidoM, Nombre, Credito, Deuda
	FROM Cliente;

-- 11. Muestra el nombre de los proveedores
	SELECT Nombre
	FROM Proveedore;

-- 12. Muestra todos los datos de los clientes
	SELECT * FROM Cliente;

-- 13. Muestra el nombre los productos
	SELECT Nombre FROM Producto;

-- 14. Muestra el nombre y precio sugerido de venta de los productos
	SELECT Nombre, PrecioSugerido
	FROM Producto;

-- 15. Muestra el nombre, precio de compra y precio sugerido de venta de los productos
	SELECT Nombre, PrecioCompra, PrecioSugerido
	FROM Producto;




USO DE ALIAS PARA PONER TITULOS EN LAS COLUMNAS


-- 1. Cambia el titulo de la columna codpost a CODIGO POSTAL de los clientes
	SELECT CodigoPostal as "CODIGO POSTAL"
	FROM Cliente;

-- 2. Muestra el RFC como REGISTRO FEDERAL DE CONTRIBUYENTES en la tabla de clientes
	SELECT rfc as "Registro Federal del Contribuyente"
	FROM Cliente;

-- 3. Muestra  apellido paterno como A.paterno, el apellido materno como A. Materno y el nombre de los clientes
	SELECT ApellidoP as "A.Paterno", ApellidoM as "A.Materno", Nombre
	FROM Cliente;

-- 4. muestra país como pais de origen, nombre y el rfc como registro de contribuyentes de los clientes
	SELECT pais as "País de origen", nombre, rfc as "Registro Federal del Contribuyente"
	FROM Cliente;

-- 5. Muestra el nombre, la deuda y el numero 1000 con el titulo pago a deuda
	SELECT Nombre, Deuda, 1000 as "Abono a deuda"
	FROM Cliente;

-- 6. Muestra el nombre, el precio sugerido de venta como P. VENTA y la existencia de los productos
	SELECT nombre, preciosugerido as "P. VENTA", existencia
	FROM Producto;

-- 7. Muestra el nombre, el precio sugerido de venta con el titulo P. Venta y el numero 30 con el titulo DESCUENTO
	SELECT nombre, '$' || ' ' || preciosugerido as "P. Venta", 30 as "DESCUENTO"
	FROM Producto;

-- 8. Muestra el nombre del producto 
	SELECT nombre
	FROM Producto;

-- 9. Muestra el Nombre con el titulo producto, la existencia, el numero 10 con el titulo cantidad solicitada y el precio sugerido de venta con el titulo P.Sugerido de los productos.
	SELECT nombre as "Producto", existencia, '10' as "Cantidad Solicitada", preciosugerido as "P.Sugerido"
	FROM Producto;

-- 10. Muestra el nombre con el titulo PROVEEDOR de los proveedores
	SELECT nombre as "PROVEEDOR"
	FROM Proveedor;


--COLUMNAS GENERADAS

Nota. Lo que esta entre corchetes son datos obtenidos de la BD u operaciones con estos y debe generarse la frase en cuesti�n para todos los registros de la tabla correspondiente


-- 1. Muestra el nombre completo de los clientes
	SELECT Nombre || ' ' || ApellidoP || ' ' || ApellidoM AS "Nombre completo"
	FROM Cliente;

-- 2. Muestra el nombre con el apellido paterno
	SELECT Nombre || ' ' || ApellidoP AS "Nombre con apellido"
	FROM Cliente;

-- 3. Muestra el nombre completo empezando por el apellido paterno
	SELECT ApellidoP || ' ' || ApellidoM || ' ' || Nombre AS "Nombre completo"
	FROM Cliente;

-- 4. Muestra "El cliente [Edgar] se apellida [Catalan].
	SELECT 'El cliente ' || nombre || ' se apellida ' || ApellidoP as "Apellido de Clientes"
	FROM Cliente;

-- 5. Muestra "[Edgar] vive en [Iztacalco]".
	SELECT nombre || ' vive en ' || Colonia as "Colonia donde vive"
	FROM Cliente;

-- 6. Muestra el resultado de credito-deuda como "Credito disponible".
	SELECT '$ ' || credito-deuda as "Credito Disponible"
	FROM Cliente;

-- 7. Cuanto seria el 15% de la deuda de cada cliente.
	SELECT '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.15,2) as "15%"
	FROM Cliente;

-- 8. Muestra al cliente, su deuda, el 10% de su deuda y su deuda con ese incremento.
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.10,2) as "10%", '$ ' || TRUNC(deuda*1.10,2) as "Total"
	FROM Cliente;

-- 9. �Cuanto tendr�a que el cliente mensualmente si se le ofrece pagar su deuda a 6 meses?
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda/6,2) as "6 Mensualidades"
	FROM Cliente;

-- 10. Cuanto tendria que pagar el cliente por mes a 6,12 y 24 meses para cubrir su deuda.
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda/6,2) as "6 Mensualidades", '$ ' || TRUNC(deuda/12,2) as "12 Mensualidades", '$ ' || TRUNC(deuda/24,2) as "24 Mensualidades"
	FROM Cliente;

-- 11.Muestra el nombre completo del cliente, su deuda y las mensualidades a 6 meses con un cargo del 10%
	SELECT nombre || ' ' || apellidop || ' ' ||  apellidom as "Nombre", '$ ' || deuda as "Deuda", '$ ' || TRUNC((deuda*1.10)/6,2) as "6 Mensualidades", '$ ' || TRUNC(deuda*1.1,2) as "Total a Pagar"
	FROM Cliente;

-- 12. Si se le aplica un descuento del 30% ¿Cuanto tendria que pagar el cliente?
	SELECT Nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.7,2) as "Deuda con 30% de descuento"
	FROM Cliente;

-- 13. De cuanto serian las mensualidades de la deuda restante a 6,12 y 24 meses, si primero se da un anticipo del 30%
	SELECT Nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.3,2) as "Anticipo de 30%", '$ ' || TRUNC((deuda*.7)/6,2) as "6 Mensualidades", '$ ' || TRUNC((deuda*.7)/12,2) as "12 Mensualidades", '$ ' || TRUNC((deuda*.7)/24,2) as "24 Mensualidades"
	FROM Cliente;

-- 14. Muestra "El credito de [Edgar] es [5000]"
	SELECT 'El crédito de ' || Nombre || ' es $ ' || credito as "Informacion Credito"
	FROM Cliente;

-- 15. Muestra "[Edgar] tiene un credito de[5000] y debe[3000], por tanto puede pedir otro credito de hasta[credito-deuda]
	SELECT nombre || ' tiene un credito de $ ' || credito || ' y debe $ ' || deuda || ' por tanto puede pedir otro credito de hasta $ ' || credito-deuda as "Informacion uso de credito"
	FROM Cliente;

-- 16. Muestra "[Edgar] en un credito a 6 meses tiene que pagar un total de [12000]por tanto pagara mensulamente[2000]"
	SELECT Nombre || ' en un credito a 6 meses tiene que pagar un total de $' || credito-deuda || ' por tanto pagara 6 mesualidades de $ ' || TRUNC((credito-deuda)/6,2) as "Proyeccion Pago en Mensualidades"
	FROM Cliente;

-- 17. Muestra "Estimado cliente [Edgar Catalan], le recordamos que tiene una deuda de [10000] pesos, le ofrecemos la posibilidad de pagar el 40% ([4000] pesos) y el resto a 6 meses con el 10% de interes, quedando en [1100] pesos mensuales  "
	SELECT 'Estimado cliente ' || nombre || ' le recordamos que tiene una deuda de $ ' || deuda || ' pesos, le ofrecemos la posibilidad de pagar el 40% ($' || deuda*.4 || ' pesos) y el resto a 6 meses con el 10% de interes, quedando en $ ' || TRUNC(((deuda*.6)*1.1)/6, 2) || ' pesos mensuales' as "Oportunidad de Liquidacion"
	FROM Cliente;

-- 18. Muestra: "El producto [Tele] se vende en [15000]" 
	SELECT 'El producto ' || nombre || ' se vende en $ ' || preciosugerido as "Precios"
	FROM Producto;

-- 19. Muestra: "El producto [Tele] nos cuesta [5000] y se vende en [15000], por lo que su ganancia es de [PrecioVenta-PrecioCompra] "
	SELECT 'El producto ' || nombre || ' nos cuesta $ ' || preciocompra || ' y se vende en $ ' || preciosugerido || ', por lo que su ganancia es de $ ' || preciosugerido-preciocompra as "Margen de ganancia"
	FROM Producto;

-- 20. Si resurtimos 10 [Televisiones] con el ultimo precio de compra: [5000] nos costar�a  :[50000]
	SELECT 'Si resurtimos 10 ' || nombre || ' con el precio de compra por unidad: $ ' || preciocompra || ', nos costara: $ ' || preciocompra*10 as "Costo de Reabastecimiento"
	FROM Producto;
```

### Practica Laboratorio 4

[[04T Sintaxis seleccion|EXPLICACION]]

```sql
Nombre: JONATHAN LEON BAEZ PACHECO 
Grupo:3BV2
Profesor: EDGAR A. CATALÁN SALGADO



-- SELECCION DE REGISTROS
-- EJERCICIOS

--1. Los clientes con el nombre de Edgar
    SELECT * FROM cliente
    WHERE nombre = 'Edgar';

--2. Los clientes que no se llamen Edgar
    SELECT * FROM cliente
    WHERE nombre != 'Edgar';

--3. Los clientes con un credito mayor a 5000
    SELECT * FROM cliente
    WHERE credito > 5000;

--4. Los clientes con un credito menor a 5000
    SELECT * FROM cliente
    WHERE credito < 5000;

--5. Los clientes de la Delegacion Iztacalco
    SELECT * FROM cliente
    WHERE alcaldia = 'Iztacalco';

--6. Los productos con un precio sugerido de mas de 5000
    SELECT * FROM producto
    WHERE preciosugerido >= 5000;

--7. Los productos de los que nos queden menos de 5
    SELECT * FROM producto
    WHERE existencia < 5;

--8. Los clientes cuyo pago mensual a 6 meses sea mayor a 1000
    SELECT * FROM cliente
    WHERE deuda/6 > 1000;

--9. Los clientes cuyo crŽdito disponible (CrŽdito- Deuda), sea menor o igual a 3000
    SELECT * from cliente
    WHERE credito-deuda <= 3000;

--10. Los clientes a los que su deuda incremŽntada en 20% sea mayor a 20000
    SELECT * FROM cliente
    WHERE deuda*1.20 > 20000;

--11. Los clientes que si dan un anticipo del 20%, su deuda es menor de 10000
    SELECT * FROM cliente
    WHERE deuda*.8 < 10000; 
 




-- SELECCION DE NULOS
-- EJERCICIOS 

--1. Muestra a los clientes que todavia no tienen asignado credito
	SELECT nombre, credito FROM CLiente
	WHERE Credito is NULL; 

--2. Muestra a los clientes que nos falta su RFC
	SELECT nombre, rfc FROM Cliente
	WHERE rfc is NULL;

--3. Muestra a los clientes que no tienen apellido materno
	SELECT nombre, apellidom FROM Cliente
	WHERE apellidom is NULL;

--4. Muestra solo a los clientes que si tienen asignado un RFC
	SELECT nombre, rfc FROM Cliente
	WHERE rfc is not NULL;

--5. Muestra solo a los clientes que si tienen correo electr—nico registrado
	SELECT nombre, correoelectronico FROM Cliente
	WHERE correoelectronico in not NULL;

--6. Muestra solo a los productos que si tienen precio sugerido de venta
	SELECT * FROM Producto
	WHERE preciosugerido is not NULL;

--7. Muestra a los clientes que no tienen delegaci—n especificada  
	SELECT nombre, alcaldia FROM Cliente
	WHERE alcaldia is NULL;





-- SELECCION CON OPERADORES LOGICOS
-- EJERCICIOS

--1. Los clientes que no viven en Iztacalco
	SELECT nombre, alcaldia FROM Cliente
	WHERE not alcaldia = 'Iztacalco';

--2. Los clientes que no se llaman Edgar
	SELECT nombre FROM Cliente
	WHERE not nombre = 'Edgar';

--3. Los que se llaman Edgar o Juan
	SELECT nombre FROM Cliente
	WHERE nombre = 'Edgar' or nombre = 'Juan';

--4. Los que NO se llaman Edgar o Juan
	SELECT nombre FROM Cliente
	WHERE not (nombre = 'Edgar' or nombre = 'Juan');

--5. Los que tienen un credito entre 5000 y 10000
	SELECT nombre FROM Cliente
	WHERE credito > 5000 and credito < 1000;

--6. Los que NO tienen un credito entre 5000 y 10000
	SELECT credito FROM Cliente
	WHERE not (credito > 5000 and credito < 1000);

--7 Los que se llamen Edgar y su apellido paterno es  Catalan
	SELECT nombre FROM Cliente
	WHERE not (nombre = 'Edgar' and apellidop = 'Catalan');

--8. Los que su apellido paterno es Catalan y NO se llaman Edgar
	SELECT nombre FROM Cliente
	WHERE apellidop = 'Catalan' and (not nombre = 'Edgar');

--9. Los que se llaman Blanca o su apellido paterno es Catalan
	SELECT nombre, apellido FROM Cliente
	WHERE nombre = 'Blanca' or apellidop = 'Catalan';

--10. Los que cualquiera de sus apellidos es catal‡n
	SELECT nombre, apellidop, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidom = 'Catalan';

--11. Los que ninguno de sus apellidos es catal‡n
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE not (apellidop = 'Catalan' or apellidom = 'Catalan');

--12. Los que su apellido paterno es Catalan o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez';

--13. Los que su apellido paterno es catal‡n, Perez o Garcia
	SELECT nombre, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez' or apellidop = 'Garcia';

--14. Los que cualquiera de sus apellidos es Catalan o Perez
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez' or apellidom = 'Catalan' or apellidom = 'Perez';

--15. Los que se llaman Edgar y su apellido paterno es Catal‡n o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE nombre = 'Edgar' and (apellidop = 'Catalan' or apellidop = 'Perez');

--16. Los que se llaman Edgar y su apellido paterno NO sea Catal‡n o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE nombre = 'Edgar' and not(apellidop = 'Catalan' or apellidop = 'Perez');

--17. Los de la Alcaldia Iztacalco, GAM y bendito Juarez
	SELECT nombre, alcaldia FROM Cliente
	WHERE alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero' or alcaldia = 'Benito Juarez';

--18. Los de Iztacalco y GAM que su apellido paterno sea catal‡n
	SELECT nombre, apellidop, alcaldia FROM Cliente
	WHERE apellidop = 'Catalan' and (alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero');

--19. Los que viven en Iztacalco y su credito esta en 5000 y 10000
	SELECT nombre, alcaldia, credito FROM Cliente
	WHERE credito between 5000 and 10000;

--20. Los que viven en Iztacalco o Coyoacan y su deuda esta en 10000 y 20000
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE (alcaldia = 'Iztacalco' or alcaldia = 'Coyoacan') and (deuda between 10000 and 20000);

--21. Los de Iztacalco y GAM que cualquiera de sus apellidos sea catal‡n 
	

--22. Los que se llaman Edgar y cualquiera de sus apellidos sea catal‡n o Perez
	

--23. Los que se llaman Edgar y ninguno de sus apellidos sea catal‡n o Perez
	

--24. Los de la Alcaldia Iztacalco que su pago mensual a 6 meses sea mayor o igual a 1000
	

--25. Los de la Alcaldia Iztacalco que no tengan crŽdito asignado
	

--26. Los de la Alcaldia Iztacalco con un crŽdito disponible( CrŽdito-Deuda) mayor a 10000
	

--27. Los de la Alcaldia Iztacalco que no tengan apellido materno o crŽdito asignado
	

--28. Los de la delegaciones GAM e Iztacalco que no tengan apellido materno o crŽdito asignado





-- OPERADORES ESPECIALES
-- EJERCICIOS

--1. Credito entre 5000 y 10000 con between
	

--2. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez
	

--3. Los que su deuda este entre 10000 y 15000 y su pago mensual a 12 meses este entre 500 y 1000
	

--4. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y que su deuda este entre 10000 y 15000
	

--5. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y su apellido paterno sea Catalan
	

--6. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y cualquiera de sus apellidos sea Catalan
	

--7. --6. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y cualquiera de sus apellidos sea Catalan, Perez o Garcia
	




-- EJERCICIOS BUSQUEDA DE PATRONES
-- EJERCICIOS	

--1. Los clientes que se llamen Edgar sin importar que tengan 2 nombres
	

--2. los clientes que su segundo caracter sea una "d"
	

--3. Los que empiecen con una vocal
	

--4. Los que no empiecen con  vocal
	

--5.Los que su nombre termine con 'r' 
	

--6.los que empiecen con una vocal y terminen con h
	

--7. Los que su tercer caracter sea una G
	

--8. los que su primer caracter sea 'E' y el 4 sea 'a'
	

--9. Los que tengan por lo menos una 'E' en su nombre
	

--10. Los que tengan dos 'E'
	

--11. Los que tengan por lo menos 2 vocales
	

--12.Los que tengan menos de 2 vocales
	

--13.Los que se llamen edgar y su apellido paterno empiece con 'C'
	

--14.los que se llamane Edgar y Cualquiera de sus apellidos empiece con'C'
	

--15.Los clientes que su apellido empiece con la primera mitad del alfabeto [a-m]
	

--16.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z]
	

--17.Los clientes que su apellido empiece con la primera mitad del alfabeto [a-m] pero que no empiecen ni con A ni con E
	

--18.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z] con un credito mayor a 10000
	

--19.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z] que tengan un credito mayor a 10000 y que la mensualidad a pagar a 6 meses sea mayor a 1000
	

--20.Los clientes que su nombre empiece con E y su penultimo caracter sea A (Edgar)
	

--21.Los clientes que su nombre empiece con E, su cuarto caracter sea Z y el antepenultimo sea una vocal (Elizabeth )
	

--22.Los que tengan 2 o mas nombres
	

```

### Practica Laboratorio 5

``` sql
Nombre: JONATHAN LEON BAEZ PACHECO 
Grupo:3BV2
Profesor: EDGAR A. CATALÁN SALGADO
	
-- 1. Muestra los primeros tres caracteres del nombre
-- 2. Muestra los œltimos 3 caracteres del nombre
-- 3. Muestra del 2do al 5to caracter del nombre
-- 4. Reemplaza las d por s en nombre
-- 5. ObtŽn la longitud del apellido paterno
-- 6. Muestra los nombres sin los espacios en blanco al inicio del nombre
-- 7. Muestra a los nombres que tienen espacios al final
-- 8. Muestra en mayusculas el nombre
-- 9. Muestra en minœsculas el apellido paterno
-- 10. Muestra la cantidad de caracteres del nombre
-- 11. Muestra a los clientes con su delegaci—n, reemplazando Benito Juarez por B. Juarez 
-- 12. Muestra el nombre completo empezando por el apellido paterno con mayusculas
-- 13. Muestra el nombre completo en mayusculas empezando por el apellido paterno 
-- 14. Muestra el nombre de los clientes con las E reemplazadas con el numero 3
-- 15. Muestra el nombre de los clientes con las o reemplazados con con el numero 0

Uso de funciones para condicionar registros
-- 1. Muestra solo a los clientes que su nombre tiene mas de 5 letras
-- 2. Muestra a los clientes que su nombre tiene entre 5 y 7 caracteres
-- 3. Muestra a los que clientes que tienen espacios en blanco al inicio del nombre
-- 4. Muestra solo a los clientes que tienen espacios al final del nombre
-- 5. Muestra solo a los clientes que tienen espacios en blanco al inicio o al final del nombre

Anidamiento de funciones y concatenaciones

-- 1. Muestra el nombre de los clientes reemplazando lo siguientes caracteres: E-->3, O-->0 (Desmond--> D3sm0nd)
-- 2. Muestra el nombre de los clientes reemplazando los siguientes caracteres A-->@,E-->3,I-->!, O-->0 ( Murcielago--> Murc!3l@g0)
-- 3. Convierte los primeros dos caracteres del nombre en mayœscula (Edgar-->EDgar)
-- 4. Convierte el ultimo caracter del nombre en mayusculas (Edgar-->EdgaR)
-- 5. Convierte el 3er caracter del nombre en Mayuscula (Edgar--> EdGar)
-- 6. Convierte el 2do y 4to car‡cter del nombre a Mayuscula(Edgar-->EDgAr)
-- 7. Convierte a mayusculas el  penœltimo car‡cter del nombre (Edgar-->EdgAr)
-- 8. Convierte a mayusculas el segundo y ultimo caracter (Armando-->ArmandO)
-- 9. Convierte a mayuscula el segundo y penœltimo caracter (Armando--> ArmanDo) 
-- 10. Convierte a mayuscula el segundo, cuarto y penœltimo caracter del nombre(Armando--> ARmAnDo)




```