---
tags:
  - Tercero
  - Tecnologicas
cssclasses:
  - TECNOLOGICAS
  - CUADRO-CHICO
---
[[analisisDisenoAlgoritmos_IIA2020.pdf|Programa Sintético: 📄]]
Profesor: Ana Belem 
____
____
## I. CONTEXTUALIZACIÓN Y NOTACIONES
---
~~27 AGOSTO 2025~~
__Problemas computacionales__ Es lo que nos permite establecer formalmente la relación entre cada instancia del problema y su solución correspondiente.

Decibilidad

_Problemas decidibles_ Son aquellos que se resuelven por computadora
	_Tratables_ Una computadora los resuelve en un tiempo no muy alto On^a
	_No tratables_ Muy tardados Oa^n  On! 
_No decidibles_ No se resuelven por computadoras

__Problemas computables__ Están relacionados con los problemas decidibles

__Problemas no computables__ No existe un algoritmo que lo resuelva

Problema de la detención ¿Existe un algoritmo que indique que un programa cualquiera terminara o se ejecutara sin fin?
no

Múltiples algoritmos que pueden resolver un problema
¿Cuál es mejor? (Eficiencia) Relacionado con el uso de recursos
Mejor uso de recursos
	Memoria (Espacio) Conteo simbólico en bytes
	Procesador (Tiempo) Contar el numero de instrucciones 

Eficacia Que cumpla con el objetivo

---
### Tipos de complejidad

~~02 SEPTIEMBRE 2025~~
La __complejidad__ estudia como crece el coste computacional (espacio y tiempo) de resolver un problema en relación a su tamaño (tamaño de la entrada de datos "n"). Es una medición que nos ayuda a describir el comportamiento de un algoritmo en términos de tiempo de ejecución y memoria requerida.

Formas de medir la complejidad
_Complejidad Temporal_ Contar el número de operaciones básicas que realiza el algoritmo.
_Complejidad Espacial_ Contar la cantidad de memoria que requiere el algoritmo.

__Ejemplo:__ Un algoritmo que imprima del 0 a n de uno en uno
``` c
# Imprimir(n)
1	print = "Conteo"
2	for i=0 to n
3		print i	
```

| Instrucción      | Costo | Tiempo |     | Variable | Costo | Espacio |
| ---------------- | ----- | ------ | --- | -------- | ----- | ------- |
| `print="Conteo"` | C1    | 1      |     | `i`      | C1    | 1       |
| `for i=0 to n-1` | C2    | n+2    |     | `n`      | C2    | 1       |
| `print i`        | C3    | n+1    |     |          |       |         |

#### Mejor e
### Notación asintótica



____
## II.  ESTRATEGIAS DE DISEÑO DETERMINISTAS
____
## III.  ESTRATEGIAS DE DISEÑO NO DETERMINISTAS
____
## IV.  INTRODUCCIÓN A LA TEORÍA DE LA COMPLEJIDAD 
---
