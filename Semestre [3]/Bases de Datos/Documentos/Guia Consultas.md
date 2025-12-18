--PROYECCION
 	Select Campo1, Camp2....  
	From Tabla

USO DE ALIAS para poner titulos a las columnas

	Select Campo as 'titulo de columna'

--COLUMNAS GENERADAS
	Concatenacion:
		CONCAT (Dato1, dato2,...)  Concatena cadenas de  
		caracteres 
	Operadores aritmeticos:
		+  Suma
		-  Resta
		*  Multiplicacion
		/  Division
		() Sirven para agrupar expresiones aritmeticas e imponer un orden en su ejecucion

SELECCION DE REGISTROS
	select campo1,campo2
	from tabla
	where condicion

	Condicion se compone de la siguiente forma:
		Dato1 OpComparacion Dato2

	Dato puede ser un campo, valor o cualquier expresion que nos de un valor valido (funciones, expresiones aritmeticas, consulta, etc) 	

    Operadores de comparacion
	>	Mayor que
	>= 	Mayor o igual que
	=	Igual que
	<=	Menor igual que
	<	Menor que
	<> o !=	Diferente que


SELECCION CON OPERADORES LOGICOS 

	NOT Condicion  Pide que no se cumpla la condicio
        Operadores logicos binarios: 
		Condicion1 AND Condicion2 pide que se cumplan las 2 condiciones
		Condicion1 OR Condicion2  pide que se cumpla por lo menos una de las dos

	Podemos usar parentesis para agrupar condiciones, de distintas formas, por ejemplo:
		(C1 OpLogicoBin C2) OpLogicoBin C3
		(C1 OpLogicoBin C2) OpLogicoBin (C3 OpLogicoBin C4)
		not (C1 OpLogicoBin C2)

OPERADORES ESPECIALES

	Campo between LimiteInferior AND LimiteSuperior  La condicion se cumple cuando el valor en campo esta entre los limites indicados
	Campo in (Dato1, Dato2, etc)	La condicion se cumple cuando el valor en campo es cualquiera de los datos especificados

OPERADORES PARA BUSQUEDA DE PATRONES

Operador Like

	select nombre
	From	Tabla
	where nombre like 'texto'

	En el texto puede ir cualquiera de los siguientes comodines
		% 0 o mas caracteres, cualquiera que estos sean
		_ Un solo caracter, cualquiera que sea

Operador REGEXP

	select nombre
	From	Tabla
	where nombre regexp 'texto'

La principal diferencia entre like y regexp es que con like el patron se tiene que cumplir el patron en la totalidad del texto, con regexp basta con que se cumpla en alguna parte del texto. Para especificar que el patron se debe de cumplir al inicio o al final se agregan los siguientes comodines:
	"^" Especifica el inicio del texto
	"$" Especifica el final del texto

	En el texto puede ir cualquiera de los siguientes comodines
	"." Un solo caracter el que sea (equivale a "_" en like) en una posicion especifica
	"*" Especifica 0 o mas instancias de lo que le precede. Si ponemos ".*" equivale a % en like 

Los corchetes permiten extender la funcionalidad del "." de las siguientes formas:
veces. 
	"[CCC...]" Especifica un conjunto de caracteres  validos en una posicion especifica.
	"[C-C]" Especifica un rango de caracteres validos en una posicion especifica.
	"[^C]" Pide que no aparezcan los caracteres especificados en una posicion especifica 	
	
	Las llaves permiten especificar el numero de veces lo que le precede:
	"{N,M}", el cual indica el numero minimo (N) y maximo (M) de veces debe aparecer lo que le precede. si se especifica solo un numero {N} es equivalente a {N,}, que lo podriamos interpretar como minimo N, maximo lo que sea.

	Finalmente podemos especificar cadenas opcionales:
	"Cadena1|Cadena1" indica que pude aparecer la cadena 1 o la 2
	

	La informacion detallada de regexp la encuentran en los siguientes links (en 	ingles)

	http://download.oracle.com/docs/cd/E17952_01/refman-5.1-en/regexp.html
	http://docs.oracle.com/cd/E17952_01/refman-5.1-en/pattern-matching.html



FUNCIONES PARA MANEJO DE TEXTO

	CHAR_LENGTH (texto) Regresa la longitud del texto
	UPPER (texto) Regresa el texto en mayusculas
	LOWER (texto) Regresa el texto en minusculas
	LEFT(texto, num)  regresa los primeros caracteres del texto, la  cantidad de caracteres obtenidos esta especificado por num
	RIGHT(texto, Num) regresa los ultimos caracteres del texto, la  cantidad de caracteres obtenidos esta especificado por num
	SUBSTRING (texto, PosIni, Num)  obtiene del texto, la cantidad de caracteres indicado por Num a partir de la posicion inicial especificada
	LTRIM(texto) quita los espacios en blanco al inicio del texto
	RTRIM(texto) quita los espacios en blanco al final del texto
	TRIM (texto) quita los espacios en blanco tanto al inicio como al final del texto.
	REPLACE (texto, SubcadenaAReemplazar, NuevaCadena), busca dentro de un texto una subcadena y la reemplaza por una nueva 


NOW(); regresa la fecha y hora actuales

DATE(expr) Extrae la parte de fecha de la expresión de fecha o fecha y hora expr.

   mysql> SELECT DATE('2003-12-31 01:02:03');
        -> '2003-12-31'


DATEDIFF(expr,expr2) retorna el número de días entre la fecha inicial expr y la fecha final expr2. expr y expr2 son expresiones de fecha o de fecha y hora. Sólo las partes de fecha de los valores se usan en los cálculos. 

   mysql> SELECT DATEDIFF('1997-12-31 23:59:59','1997-12-30');
        -> 1 
   mysql> SELECT DATEDIFF('1997-11-30 23:59:59','1997-12-31');
        -> -31


DATE_ADD(date,INTERVAL expr  type), DATE_SUB(date,INTERVAL expr  type)

Estas funciones realizan operaciones aritméticas de fechas. date es un valor DATETIME o DATE especificando la fecha de inicio. expr es una expresión que especifica el intervalo a añadir o borrar de la fecha de inicio. expr es una cadena; puede comenzar con un '-' para intervalos negativos. type es una palabra clave que indica cómo debe interpretarse la expresión.

La palabra clave INTERVAL y el especificador type no son sensibles a mayúsculas.

La siguiente tabla muestra cómo se relacionan los argumentos type y expr :

type Value 	Expected expr Format
MICROSECOND 	MICROSECONDS
SECOND 	SECONDS
MINUTE 	MINUTES
HOUR 	HOURS
DAY 	DAYS
WEEK 	WEEKS
MONTH 	MONTHS
QUARTER 	QUARTERS
YEAR 	YEARS
Los valores QUARTER y WEEK están disponibles a partir de MySQL 5.0.0. 

    mysql> SELECT '1997-12-31 23:59:59' + INTERVAL 1 SECOND;
        -> '1998-01-01 00:00:00'


    mysql> SELECT DATE_SUB('1998-01-02', INTERVAL 31 DAY);
        -> '1997-12-02'


DAYNAME(date) Retorna el nombre del día de la semana para date. 

DAYOFMONTH(date) Retorna el día del mes para date, en el rango 1 a 31.

MONTH(date) Retorna el mes para date, en el rango 1 a 12.  

MONTHNAME(date) Retorna el nombre completo del mes para date. 

YEAR(date) Retorna el año para date, en el rango 1000 a 9999. 


EJERCICIOS UNION

select Col1, col2
from tabla1
union
select Col1,Col2
from tabla2
union
...
union
select Col1,Col2
from tabla

El operador union tiene 2 restricciones:
1.- todas las consultas tienen que tener el mismo numero de columnas
2.- La columna n en todas las consultas tiene que ser del mismo tipo, es decir, si en la consulta 1 la cpolmna 1 es varchar, dicha columna tiene que ser varchar en todas las consultas 



La clausula join nos permite unir 2 tablas bajo un determinado criterio, nos sirve para juntar la informacion almacenada en los campos de una tabla con los de otra

un join se especifica en la seccion del from:

select Tabla1.Campo, Tabla2.Campo
from Tabla1 aliasTabla1 join tabla2 aliastabla2 on condicion

En la parte del select especificamos la tabla a la que pertenece el campo principalmete para evitar ambiguedades en el caso de que 2 tablas posean campos con el mismo nombre (por ejemplo el campo nombre de la tabla proveedores y el campo nombre de la tabla productos), ademas de esta forma se da mas claridad a la consulta.

Los alias permiten cambiar, por asi decirlo, el nombre de una tabla en la consulta, Si se le pone un alias a una de las tablas, se tiene que dejar de usar el nombre de la tabla y forzosamente para esa tabla tenemos que usar el alias.

De acuerdo a la condicion del join podemos tener los siguientes tipos de join

EQUIJOIN, es cuando en la condicion se pide que se cumpla una igualdad, generalmente es de una llave primaria con una llave foranea.

select Tabla1.Campo, Tabla2.Campo
from Tabla1 join tabla2 on Tabla1.CampoLlavePrim=Tabla2.CampoLLaveForanea


NON EQUIJOINS, es cuando en la condicion no se pide una igualdad, una posibilidad es cuando se compara un valor de una de las tablas con un rango establecido en una de las otras

select Tabla1.Campo, Tabla2.Campo
from Tabla1 join tabla2 on 
Tabla1.Dato>Tabla2.LimInf and Tabla1.Dato<Tabla2.LimSup

Si tabla1 y tabla2 son la misma tabla, entonces se dice que se esta haciendo un SELF JOIN, en este caso en particular se hace obligatorio el uso del alias para tablas:

El join solo muestra los registros que cumplen con la relacion establecida mediante la condicion, todos los registros de ambas tablas que no puedan cumplir con dicha condicion quedan fuera, por esta razon es que se conocen como INNER JOINS o joins internos. 

Debido a que es muy comun los casos en que necesitemos todos los registros de una de las dos tablas o incluso de las 2, existen los OUTER JOINS,que nos permiten agregar estos registros, estos son:

LEFT OUTER JOIN
RIGHT OUTER JOIN
FULL OUTER JOIN

o simplemente:

LEFT JOIN
RIGHT JOIN
FULL JOIN

Estos en pocas palabras, si nos posicionamos en la palabra join, tenemos una tabla a la izquierda y otra a la derecha, mediante LEFT o RIGHT indicamos de cual de las tablas queremos todos los registros, FULL nos permite obtener todos los registros de ambas tablas.


select Tabla1.Campo, Tabla2.Campo
from TablaIzquierda left join tablaDerecha on condicion
 

ANIDAMIENTO DE JOINS

La instruccion completa de un join nos da como resultado una tabla que contiene todos los campos de las tablas usadas, ese resultado puede ser usado como parametro para otro join, lo cual nos permite hacer cosas como:

select Tabla1.Campo, Tabla2.Campo, Tabla3.Campo
from (Tabla1 join Tabla2 on condicion1)
      join Tabla3 on Condicion2


select Tabla1.Campo, Tabla2.Campo, Tabla3.Campo, Tabla4.Campo
from (Tabla1 join Tabla2 on condicion1)
      join 
     (Tabla3 join Tabla4 on Condicion2)
      on condicion3


FUNCIONES DE AGRUPAMIENTO

Las funciones de agrupamiento sirven para que en base  a un grupo de valores, obtener un resultado.

Las funciones mas comunes son:

SUM (Campo)  Calcula la suma del grupo
AVG (Campo) Calcula el promedio del grupo
Max (Campo) Regresa el valor mas grande del grupo
MIN (Campo) Regresa el valor mas pequeño del grupo
COUNT (Campo) Cuenta los integrantes del grupo

La sintaxis para usar funciones de grupo es la siguiente:

select FAgrupamiento(Campo), CampoDeAgrupamiento
from tabla
group by CampoDeAgrupamiento
having CondicionGrupo

Un campo de agrupamiento es un campo con base al cual vamos a generar grupos, por ejemplo, si se calcula el total de clientes de una delegacion, el campo delegacion seria el campo de agrupamiento.

En una consulta que tiene funciones de agrupamiento solo se pueden mostrar resultados de funciones de agrupamiento o Campos de agrupamiento. Esto debido a que tratamos de mostrar otro campo no seria posible decidir que informacion mostrar.
En este ejemplo si tratamos de mostrar tambien el campo nombre, el sql no sabra cual nombre, de todos los clientes de una determinada delegacion mostrar.

Para condicionar grupos agregamos la clausuala having, having funciona de la misma forma que el where solo que esta es para grupos.



SUBCONSULTAS

En ciertas ocasiones para poder resolver una consulta necesitamos de un valor almacenado en la base de datos. Una subconsulta nos permite hacer esto, literalmente es una consulta metida dentro de otra, la cual se ejecuta primero para obtener un resultado y este resultado se usa en la consulta exterior para llegar al resultado final.

Por lo tanto necesitamos una forma de garantizar en este caso,que el resultado de la consulta interna unicamente regrese un registro, para lograr ese objetivo en lugar de usar el nombre usamos el identificador de producto

En realidad todos los resultados de una consulta pueden ser considerados como tablas, pero de acuerdo a la cantidad de datos que regresa y el tipo de estos, podriamos clasificarlo de la siguiente forma:

TIPO 1.- Un unico dato de un tipo especifico, generado por consultas en las que en la parte del select solo existe un campo y de algun modo se garantiza que solo se regresara un registro, ya sea que se condicione mediante el identificador o usando la clausula limit, o funciones de agregado sobre toda la tabla, etc.
	select nombre
	From tblClientes
	where IdCliente=1

TIPO 2.- Un conjunto de datos del mismo tipo. Generado por consultas que en la parte del select tienen un unico campo pero en el where se regresan 2 o mas registros
	select nombre
	From tblClientes

TIPO 3.- Un conjunto de datos de tipo diferente pero que tienen una relacion entre si.
	select nombre, FechalAlta, Credito
	From tblClientes
	where IdCliente=1

TIPO 4.- Una tabla con varios datos de tipo diferente. 
	select nombre, FechalAlta, Credito
	From tblClientes


Lo cual nos lleva a las siguientes restriciones:

En la parte del select unicamente pueden ir subconsultas del tipo 1
En la parte del from, pueden ir consultas de cualquier tipo pero se les tiene que poner un alias
En operaciones aritmeticas, solo pueden usar consultas del tipo 1
En condiciones mediante operadores comparativos, solo se pueden usar del tipo 1, aunque nos podemos ayudar de los operadores IN, ALL y ANY para extender sus capacidades y poder usar consultas de los demas tipos

Where campo in (valor1, valor2, ...) pide que campo sea igual a cualquiera de los valores
where campo > all(valor1, valor2, valor3,...) pide que campo sea mayor a todos los valores
where campo > any (valor1, valor2, valor3,...) pide que campor sea mayor a cualquiera de los valores

Podemos reemplazar esta lista de valores por una subconsulta
Where campo in (subconsulta) pide que campo sea igual a cualquiera de los valores
where campo > all(subconsulta) pide que campo sea mayor a todos los valores
where campo > any (subconsulta) pide que campo sea mayor a cualquiera de los valores

Estas subconsultas pueden ser de cualquier tipo

ORDENAMIENTO
El ordenamiento de los registros se hace mediante la clausula order by esta se pone al final se la consulta

select campo1, campo2..
from tabla
where condicion
order by tituloColumna1 ASC/DESC, tituloColumna2 ASC/DESC...

TituloColumna es la col con la cual vamos a ordenar

Ejemplo
--Ordena los clientes por nombre en orden descendente
select nombre
from tblClientes
order by nombre


LIMITE DE REGISTROS

Se puede establecer un limite de registros a mostrar.Una vez establecido dicho limite, la consulta siempre regresara la cantidad de registros indicados.

select campo1, campo2
from tblClientes
where condicion
limit Cantidad, PosInicial

Donde Cantidad es el numero de registros que se desean y la posicion inicial a partir de que registro se va a obtener


TRATAMIENTO DE NULOS
Un valor nulo es un valor especial que indica que dicho valor es desconocido, es diferente de un 0 y de una cadena vacia en el sentido de que cualquier operacion que involucre a un nulo va a dar como resultado nulo.

numero/0=0  				numero/NULO=NULO
concat ('texto1', '')='Texto1'		concant('Texto1', NULO)=NULO

Por su naturaleza el valor nulo necesita de tratamiento especial, empezando por el condicionamito de registros, el cual se tiene que hacer de la siguiente forma:

select nombre, credito
from tblClientes
where credito is null


IFNULL

Ifnull es una funcion que reemplaza nulos por el valor que se especifique

select ifnull (campo, NuevoValor)

CONDICIONALES EN CONSULTAS

CASE

La instruccion case regresa un resultado dependiendo de cual es la condicion que se cumple, tiene 2 versiones:

version 1.- Sirve para cuando la condcion es sobre el mismo campo y todas las condiciones son de igualdad

select case campo 
		when valor1 then Resultado1
		when valor2 then Resultado2
		...
		else ResultadoDefault
	End


--Muestra a la delegacion gustavo A. Madero como GAM

SELECT nombre,
	delegacion,
	CASE delegacion
		WHEN 'Gustavo A. Madero' THEN 'GAM'
		ELSE delegacion
	END
 FROM tblClientes


Version 2.- Es una version mas general, ya que en cada caso se puede especificar sobre cualquier campo y poner cualquier tipo de condicion

select case 
 	  when condicion1 then Resultado1
	  when condicion2 then Resultado2
	  ...
	  else ResultadoDefault
       end

CREACION DE TABLAS, INTEGRIDAD REFERENCIAL Y DE DATOS

La creacion de tablas se hace mediante la clausula create table, con ella especificamos el nombre de la tabla , los campos que la componen, el tipo de dato de estos y las restricciones que estos tienen, la sintaxis basica es:


Create table NombreTabla
  (
	Campo1 TipoDato(Longitud) restriccionDeCampo,
	Campo2 TipoDato(Longitud) restriccionDeCampo,
	restriccionDetabla
  )  ENGINE= TipoTabla


TIPOS DE TABLA

En mySQL existen varios tipos de tabla, la default es myISAM, que es mas portable, pero carece de la posibilidad de manejar transacciones y referencias a otras tablas, para poder hacer esto es mejor el tipo de tabla innoDB.

InnoDB dota a MySQL de un motor de almacenamiento transaccional (conforme a ACID) con capacidades de commit (confirmación), rollback (cancelación) y recuperación de fallas. InnoDB realiza bloqueos a nivel de fila y también porporciona funciones de lectura consistente sin bloqueo al estilo Oracle en sentencias SELECT. Estas características incrementan el rendimiento y la capacidad de gestionar múltiples usuarios simultáneos. No se necesita un bloqueo escalado en InnoDB porque los bloqueos a nivel de fila ocupan muy poco espacio. InnoDB también soporta restricciones FOREIGN KEY. En consultas SQL, aún dentro de la misma consulta, pueden incluirse libremente tablas del tipo InnoDB con tablas de otros tipos.

InnoDB se diseñó para obtener el máximo rendimiento al procesar grandes volúmenes de datos. Probablemente ningún otro motor de bases de datos relacionales en disco iguale su eficiencia en el uso de CPU. 
para crear una tabla InnoDB se debe especificar la opción ENGINE = InnoDB o TYPE = InnoDB en la sentencia SQL de creación de tabla:

CREATE TABLE customers (a INT, b CHAR (20), INDEX (a)) ENGINE=InnoDB;
CREATE TABLE customers (a INT, b CHAR (20), INDEX (a)) TYPE=InnoDB;

para mayor informacion acerca de las tablas innodb, revisen la siguiente pagina
http://dev.mysql.com/doc/refman/5.0/es/innodb.html

TIPOS DE DATOS DE COLUMNA 

Los tipos de datos mas comunes son:

Numericos:
int  -- valores enteros
float -- Valores con punto decimal
bool -- Valores booleanos 0 o 1


De fecha y hora:
Date 		-- una fecha
DateTime 	-- Fecha y hora
Time 		--Hora 

De texto:
char 			-- Cadena de longitud fija
varchar (longitud)  	-- Cadena de longitud variable
Binary			-- Cadena de valores binarios
Text 			-- Textos realmente grandes
enum(ListaValores) 	-- Guarda un unico valor de la lista de valores
set (listaValores)	-- Guarda varios valores de la lista de valores

La informacion completa de los tipos de datos la pueden encontrar en:
http://dev.mysql.com/doc/refman/5.0/es/column-type-overview.html


RESTRICCIONES

Las reestricciones de campo son restricciones que afectan solo al campo, por ejemplo si permite nulos o no, el valor default, y el auto incremento (aunque este exija que el campo sea la llave primaria). Las restricciones de tabla afectan a toda la tabla, por ejemplo el campo que es llave primaria y la referencia foranea de un campo de la tabla a otro de otra tabla.


PERMITIR O NO NULOS
A un campo le podemos restringir si acepta nulos o no. 

sintaxis
CREATE TABLE NombreTabla
  (
	Campo1 TipoDato NOT NULL,  	-- Este campo NO acepta nulos
	Campo2 TipoDato NULL		-- Este campo SI acepta nulos
  )

Ejemplo
CREATE TABLE TblProductos
  (
	nombre VARCHAR(50) NOT NULL,
	Precio FLOAT NULL
  )
  

VALOR DEFAULT

Es posible definir un valor defualt mediante la restriccion default de la siguiente manera:

CREATE TABLE NombreTabla
  (
	Campo1 VARCHAR(50) DEFAULT " texto ",		-- Valores de texto van entre comillas
	Campo2 FLOAT DEFAULT 0				-- Valores numericos no llevan comillas
  )
  
Ejemplo
CREATE TABLE TblProductos
  (
	nombre VARCHAR(50) DEFAULT "sin nombre",
	Precio FLOAT DEFAULT 0
  )


REVISAR CONDICION

Es posible meter una condicion para un campo, esta condicion se tiene que cumplir para poder insertar el registro

sintaxis

CREATE TABLE NombreTabla
  (
   Campo TipoDato(longitud),
   CONSTRAINT NombreRestriccion  CHECK Condicion
  ) ENGINE=INNODB;  


Ejemplo

CREATE TABLE TblProductos(
  IdProducto INT, 
  IdProveedor INT,
  Nombre VARCHAR(50),
  Precio FLOAT,
  CONSTRAINT PrecioMayorCero CHECK Precio>=0
) ENGINE=INNODB;  



AUTO INCREMENTO

Si a un campo lo activamos como autoincremental, perdemos el control de este y se lo pasamos a MYSQL, el cual, se encargara de darle el siguiente valor a cada nuevo registro, debido a esto el campo tiene que ser de un tipo de dato entero. Tiene como requisito que el campo que se quiere hacer autoincremental tiene que ser llave primaria, ademas tiene como restriccion que solo un campo en cada tabla puede ser auto incremental.

Sintaxis:
CREATE TABLE NombreTabla
  (
	Campo1 INT AUTO_INCREMENT, 	-- Campo que se incrementara automaticamente
	Campo2 VARCHAR(50),		-- Otros campos
	PRIMARY KEY (Campo1)		-- El campo auto incremental tiene que ser llave
  )

Ejemplo
CREATE TABLE TblProductos
  (
	IdProducto INT AUTO_INCREMENT,
	nombre VARCHAR(50),
	PRIMARY KEY (IdProducto)
  )

Para mayor informacion de auto_increment, revisen la pagina:
 http://dev.mysql.com/doc/refman/5.0/es/example-auto-increment.html  


ESTABLECER LAS REFERENCIAS DE LAS LLAVES FORANEAS

El establecer a que campo referencia la llave foranea permite llevar el control de la integridad referencial de la base de datos, esto es, impide que un registro referenciado sea borrado y que solo existen referencias validas en el campo donde se referencia. Por ejemplo, impide que un proveedor que tiene productos asignados sea eliminado y que solo se pongan proveedores validos en la tabla de productos.

Se dice que la tabla referenciada es la tabla padre, y la que referencia a un campo de la tabla padre es la tabla hijo, es requisito que las 2 tablas sean del tipo innoDB para que funcione

Las definiciones de claves foráneas están sujetas a las siguientes condiciones:
      Ambas tablas deben ser InnoDB y no deben ser tablas temporales.
      En la tabla que hace referencia, debe haber un índice donde las columnas de clave extranjera estén listadas en primer lugar, en el mismo orden.
      En la tabla referenciada, debe haber un índice donde las columnas referenciadas se listen en primer lugar, en el mismo orden. En MySQL/InnoDB 5.0, tal índice se creará automáticamente en la tabla referenciada si no existe aún.
      No están soportados los índices prefijados en columnas de claves foráneas. Una consecuencia de esto es que las columnas BLOB y TEXT no pueden incluirse en una clave foránea, porque los índices sobre dichas columnas siempre deben incluir una longitud prefijada.
      Si se proporciona un nombre para la restriccion, éste debe ser único en la base de datos. Si no se suministra, InnoDB crea el nombre automáticamente.


Sintaxis:
[CONSTRAINT símbolo] FOREIGN KEY [id] (nombre_índice, ...)
    REFERENCES nombre_de_tabla (nombre_índice, ...)
    [ON DELETE {RESTRICT | CASCADE | SET NULL | NO ACTION}]
    [ON UPDATE {RESTRICT | CASCADE | SET NULL | NO ACTION}]

On delete y on update permiten especificar un comportamiento para cuando se borra o se actualiza un registro en la tabla padre o hijo asi:
  restrict, no permite borrar un registro en la tabla padre si existe en el hijo
  cascade, borra todos los registros en la tabla hijo que referenciaban al registro de la tabla padre borrado
  set null, pone a nulo las referencias en la tabla hijo que referenciaban al registro padre borrado
  no action, no realiza alguna accion especifico, equivalente a restrict .
El default es restrict.

Ejemplo:

CREATE TABLE TblProveedores
  (
    IdProveedor INT NOT NULL,
    PRIMARY KEY (idProveedor)
  ) ENGINE=INNODB;

CREATE TABLE TblProductos
  (
    IdProducto INT, 
    IdProveedor INT,
    CONSTRAINT ReferenciaProveedor FOREIGN KEY (IdProveedor) 
      REFERENCES TblProveedores(IdProveedor)  
  ) ENGINE=INNODB;  
  