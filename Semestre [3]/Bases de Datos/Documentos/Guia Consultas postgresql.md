--PROYECCION
 	Select Campo1, Camp2....  
	From NombreTabla

        Para mostrar todos los campos se usa * como comodin en la parte del select
         Select *
         from NombreTabla

USO DE ALIAS para poner titulos a las columnas

	Select Campo as 'titulo de columna'
	from NombreTabla

--COLUMNAS GENERADAS
	Concatenacion:
		||  Concatena cadenas de  
		caracteres 
	Operadores aritmeticos:
		+  Suma
		-  Resta
		*  Multiplicacion
		/  Division
		() Sirven para agrupar expresiones aritmeticas e
 				   imponer un orden en su ejecucion


SELECCION DE REGISTROS
	select campo1,campo2
	from tabla
	where condicion

	Condicion se compone de la siguiente forma:
		Dato1 OperadorComparacion Dato2

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

Operador Similar to

	select nombre
	From	Tabla
	where nombre similar to 'texto'

Adicionalmente similar to tambiŽn permite los siguientes caracteres de las expresiones regulares POSIX:

	En el texto puede ir cualquiera de los siguientes comodines

	"*" Especifica 0 o mas instancias de lo que le precede. Si ponemos "_*" equivale a % en like 
	"+" Especifica 1 o mas instancias de lo que le precede.
	"?" Especifica 0 o 1 instancias de lo que le precede. Si ponemos "_?" equivale a _ en like 

Los corchetes permiten extender la funcionalidad del "_" de la siguiente forma:
veces. 
	"[CCC...]" Especifica un conjunto de caracteres  validos en una posicion 

      Las llaves permiten especificar el numero de veces lo que le precede:
	"{N,M}", el cual indica el numero minimo (N) y maximo (M) de veces debe aparecer lo que le precede. si se especifica solo un numero {N} es equivalente a {N,}, que lo podriamos interpretar como minimo N, maximo lo que sea.

     Podemos especificar cadenas opcionales con el s’mbolo "|":
	"Cadena1|Cadena1" indica que pude aparecer la cadena 1 o la 2
    
    Finalmente podemos agrupar elementos para tratarlos como uno solo utilizando parŽntesis. 


Expresiones regulares POSIX (OPERADOR ~)

El operador ~ es el operador es el operador principal  para manejar expresiones regulares

Sintaxis

Dato [modificadorNegacion]~[modificadorSensibilidad] ExpresionRegular

Dato: 
   Texto literal
   Numero Literal
   Atributo
   Funcion que regrese un unico valor
   Subconsulta que regrese un unico valor

~ Operador para busqueda de patrones

modificadorNegacion 
   !  se pone ! para indicar que se requiere que no cumplan con el patron

ModificadorSensibleMayusculas
   *   insensible a mayusculas(si no se pone es sensible) 

Elementos expresion regular
una expresion regular esta compuesta por caracteres, pero algunos tienen un significado especial. En general podemos de decir que 
er='e1e2e3...en'

Es un texto pero algunos caracteres tienen significado especial y definen la interpretacion de este.

c --> Caracter simple, son aquellos que no tienen un significado

\c Si es alfanumerico, se usa como escape para dar un significado especial al caracter por ejemplo:
      \b  --> backspace
 	  \n   --> nueva linea
      para mayor informacion consulte: https://www.postgresql.org/docs/current/functions-matching.html#POSIX-ESCAPE-SEQUENCES
\k donde k es no alfanumerico, sirve para escapar y obtener los caracteres especiales que se utilizan en la sintaxis
      \\  --> Permite buscar el caracter \
      \*  --> Permite buscar el caracter \

Agrupadores 
   [ccc]  ->especifica un conjunto de elementos
   (er)   -> Especifica  una expresion regular

comodin
.  cualquier caracter


Cuantificadores
   Cualquier elemento de una expresion regular puede ir siguido por cuantificadores
   *  --> Una secuencia 0 o mas del elemento anterior
   +  --> Una secuencia 1 o mas del elemento anterior
   ?  --> Una secuencia 0 o 1 del elemento anterior
   {m}  --> secuencia de exactamente m 
   {m,} --> secuencia de de por lo menos m 
   {m,n} --> secuencia de por lo menos m y maximo n. Entre m y n con limites incluidos

Restricciones
	^  indica el inicio de la cadena
 	$  indica el final de la cadena

Para mayor informacion consulte:
 https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-POSIX-REGEXP



FUNCIONES PARA MANEJO DE TEXTO

	CHAR_LENGTH(texto) Regresa la longitud del texto
	UPPER(texto) Regresa el texto en mayusculas
	LOWER(texto) Regresa el texto en minusculas
	LEFT(texto, num)  regresa los primeros caracteres del texto, la  cantidad de caracteres obtenidos esta especificado por num
	RIGHT(texto, Num) regresa los ultimos caracteres del texto, la  cantidad de caracteres obtenidos esta especificado por num
	SUBSTRING(texto, PosIni, for Num):  obtiene del texto, la cantidad de caracteres indicado por Num a partir de la posicion inicial especificada
	LTRIM(texto) quita los espacios en blanco al inicio del texto
	RTRIM(texto) quita los espacios en blanco al final del texto
	TRIM([leading|trailing|both] [texto] from texto) quita los caracteres indicados, ya sea al inicio, al final o ambos.
	REPLACE(texto, SubcadenaAReemplazar, NuevaCadena) busca dentro de un texto una subcadena y la reemplaza por una nueva 



FUNCIONES DE FECHA

now(); regresa la fecha y hora actuales

extract(PARTEFECHA from FECHA). -  Extrae la PARTEFECHA  de FECHA 

date_part(PARTEFECHA, FECHA) 

to_char(fecha,parteFormatofecha) Convierte la fecha a texto, mostrando la parte de la fecha indicada con el formato indicado

date_part(PARTEFECHA, FECHA) - date_part(PARTEFECHA, FECHA)  Para obtener la diferencia entre dos fechas

FECHA + cast('NUMERO PARTEFECHA' as interval) Para sumar y restar valores a una fecha, se utilizan los operadores aritmŽticos +, -, y se especifica lo que se suma o resta (d’as, meses, etc)

   Select now() + cast('2 day' as interval)


age(Fecha1,Fecha2) Genera el intervalo transcurrido en tŽrminos de a–os, meses, d’as... entre las dos fechas


Ejemplo
    age(now(),(fechaalta))

ParteFEcha: 
milliseconds
second
minute
hour
day
dow     -- Day of week
week
month
quarter
year
decade
century
millennium


parteFormatofecha

Y,YYY	year in 4 digits with comma
YYYY	year in 4 digits
YYY	last 3 digits of year
YY	last 2 digits of year
Y	The last digit of year
IYYY	ISO 8601 week-numbering year (4 or more digits)
IYY	Last 3 digits of ISO 8601 week-numbering year
IY	Last 2 digits of ISO 8601 week-numbering year
I	Last digit of ISO 8601 week-numbering year
BC, bc, AD or ad	Era indicator without periods
B.C., b.c., A.D. ora.d.	Era indicator with periods
MONTH	English month name in uppercase
Month	Full capitalized English month name
month	Full lowercase English month name
MON	Abbreviated uppercase month name e.g., JAN, FEB, etc.
Mon	Abbreviated capitalized month name e.g, Jan, Feb,  etc.
mon	Abbreviated lowercase month name e.g., jan, feb, etc.
MM	month number from 01 to 12
DAY	Full uppercase day name
Day	Full capitalized day name
day	Full lowercase day name
DY	Abbreviated uppercase day name
Dy	Abbreviated capitalized day name
dy	Abbreviated lowercase day name
DDD	Day of year (001-366)
IDDD	Day of ISO 8601 week-numbering year (001-371; day 1 of the year is Monday of the first ISO week)
DD	Day of month (01-31)
D	Day of the week, Sunday (1) to Saturday (7)
ID	ISO 8601 day of the week, Monday (1) to Sunday (7)
W	Week of month (1-5) (the first week starts on the first day of the month)
WW	Week number of year (1-53) (the first week starts on the first day of the year)
IW	Week number of ISO 8601 week-numbering year (01-53; the first Thursday of the year is in week 1)
CC	Century e.g, 21, 22, etc.
J	Julian Day (integer days since November 24, 4714 BC at midnight UTC)
RM	Month in upper case Roman numerals (I-XII; >
rm	Month in lowercase Roman numerals (i-xii; >
HH	Hour of day (0-12)
HH12	Hour of day (0-12)
HH24	Hour of day (0-23)
MI	Minute (0-59)
SS	Second (0-59)
MS	Millisecond (000-999)
US	Microsecond (000000-999999)
SSSS	Seconds past midnight (0-86399)
AM, am, PM or pm	Meridiem indicator (without periods)
A.M., a.m., P.M. or p.m.	Meridiem indicator (with periods)


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
Having condicionGrupo

Un campo de agrupamiento es un campo con base al cual vamos a generar grupos, por ejemplo, si se calcula el total de clientes de una delegacion, el campo delegacion seria el campo de agrupamiento.

En una consulta que tiene funciones de agrupamiento solo se pueden mostrar resultados de funciones de agrupamiento o Campos de agrupamiento. Esto debido a que tratamos de mostrar otro campo no seria posible decidir que informacion mostrar. 

CONDICIONANDO GRUPOS

Para condicionar grupos agregamos la clausuala having, having funciona de la misma forma que el where solo que esta es para grupos.



JOINS


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

o simplemente:

LEFT JOIN
RIGHT JOIN


Estos en pocas palabras, si nos posicionamos en la palabra join, tenemos una tabla a la izquierda y otra a la derecha, mediante LEFT o RIGHT indicamos de cual de las tablas queremos todos los registros.


select Tabla1.Campo, Tabla2.Campo
from TablaIzquierda left join tablaDerecha on condicion
 

ANIDAMIENTO DE JOINS

La instruccion completa de un join nos da como resultado una tabla que contiene todos los campos de las tablas usadas, ese resultado puede ser usado como parametro para otro join, lo cual nos permite hacer cosas como:

select Tabla1.Campo, Tabla2.Campo, Tabla3.Campo
from (Tabla1 join Tabla2 on condicion1)
      join Tabla3 on Condicion2

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


TRATAMIENTO DE NULOS
Un valor nulo es un valor especial que indica que dicho valor es desconocido, es diferente de un 0 y de una cadena vacia en el sentido de que cualquier operacion que involucre a un nulo va a dar como resultado nulo.

numero/0=0  				numero/NULO=NULO
concat ('texto1', '')='Texto1'		concat('Texto1', NULO)=NULO

Por su naturaleza el valor nulo necesita de tratamiento especial, empezando por el condicionamito de registros, el cual se tiene que hacer de la siguiente forma:

Select ...
From ...
Where dato is null


COALESCE

COALESCE es una funcion que regresa el primer valor no nulo de la lista

colaesce(dato1, dato2, dato3,..., ValorDefault)
...


ORDENAMIENTO
El ordenamiento de los registros se hace mediante la clausula order by esta se pone al final se la consulta

select campo1, campo2..
from tabla
where condicion
order by tituloColumna1 ASC/DESC, tituloColumna2 ASC/DESC...

TituloColumna es la col con la cual vamos a ordenar



LIMITE DE REGISTROS

Se puede establecer un limite de registros a mostrar.Una vez establecido dicho limite, la consulta regresara la cantidad de registros indicados.

select campo1, campo2
from tblClientes
where condicion
limit  Cantidad [offset posinicial]

Donde Cantidad es el numero de registros que se desean y la posicion inicial a partir de que registro se va a obtener



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



CRECION MODIFICACION Y ELIMINACION DE TABLAS

Para modificar la definicion de una tabla la instruccion es alter table, las modificaciones mas comunes son agregar o quitar columnas.

  Para borrar una columna:
     alter table NombreTabla
       drop Column nombreColumna;
   
  Para agregar una columna:
     alter table NombreTabla
        Add NombreCampo Tipodato (longitud);


Para crear una tabla se usa la siguiente sintaxis:

create table NombreTabla
  (
   Campo1 TipoDato1,
   Campo2 TipoDato2,
   ...
   CampoN TipoDatoN
  );

Los tipos de datos mas comunes son:
   int.- Enteros 
   float.- Flotantes
   date.-  Fecha
   time.-  Hora
   char(longitud).- Texto de longitud fija.
   varchar(longitud).- Texto de longitud variable.
     


INSERCION, MODIFICACION Y ELIMINACION DE DATOS

Para la insercion de datos se utiliza la siguiente sintaxis:

insert into NombreTabla (campo1, Campo2,..., CampoN)
                 values (valor1, Valor2,..., valorN)


Donde 
  CampoX, es el nombre de cualquier campo de la tabla
  ValorX, es el valor que va a tener el campo


Para actualizar datos la instruccion es:

   update NombreTabla
       Set campo=valor
      [where condicion];


Para eliminar datos de una tabla la instruccion es:

    delete from NombreTabla
    [where Condicion];

En la sintaxis lo encerrado entre corchetes es opcional, en este caso si se omite la condicion TODOS los registros se elimiaran o actualizaran segun sea el caso, por lo que hay que ser cuidadosos.

