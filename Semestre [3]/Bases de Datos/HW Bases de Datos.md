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

### PL1 Scripts BD

#### Ejercicio_1 Escuela
``` sql
-- Baez Pacheco Jonathan Leon
-- EJERCICIO 1 : Escuela

create table profesor (
	nombre varchar(50),
	fecha_nacimiento date,
	fecha_ingreso date,
	salario float
);

create table salones (
	codigo int,
	descripcion varchar(200)
);

create table alumnos (
	nombre varchar(50),
	fecha_nacimiento date,
	promedio float
);
```

#### Ejercicio_2 Taller Mecanico
``` SQL
-- Baez Pacheco Jonathan Leon
-- EJERCICIO 2 : Taller Mecanico

create table colaborador (
	nombre varchar(50),
	fecha_ingreso date,
);

create table refaccion (
	nombre varchar(50),
	fecha_llegada date,
	fin_garantia date
);

create table auto (
	marca varchar(30),
	modelo varchar(20),
	fallas varchar(250),
);
```