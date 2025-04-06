#Segundo #Tecnologicas
[[algoritmosEstructurasDatos_IIA2020.pdf|Programa Sintético: Algoritmos y Estructuras de Datos]]
Profesor: Tonahtiu Arturo Ramirez Romero
____

## UNIDAD I
~~Algoritmos fundamentales~~
____
[Representación grafica de algoritmos fundamentales](https://visualgo.net/en)

### Algoritmia
### El problema del ordenamiento

Ordenamiento por el método _Inserción_ [[Ordenamiento Inserción.pdf|PDF]]
Esta técnica ...
``` cpp
// Baez Pacheco Jonathan Leon

# include <stdio.h>
	
int Lista[8] = {10,70,55,19,100,63,47,23};
int n = sizeof(Lista)/sizeof(int);
int posicion = 0;
int i, j = 1;
int temp = 0;
	
void imprimirArreglo();
	
	int main() {
	printf("\n\nArreglo de %d elementos:\n",n);
	imprimirArreglo();
	printf("\nOrdenando por Insercion ...\n");
	  
	for (j=1; j<n; j++) {
		temp = Lista[j];
		i = j;
	    
	    while (i >= 0) {
	    if (Lista[i-1] > temp) {
		    Lista[i] = Lista[i-1];
		    i -= 1;
	    }
	    else {
		    Lista[i] = temp;
	    break;
	    }  
	}
    
	imprimirArreglo(); 
	} 
}
	
void imprimirArreglo() {
	for(int k=0; k<n; k++) {
		printf("%d ", Lista[k]);
	}
	printf("\n");
}
```

Ordenamiento por el método _Burbuja_ [[Ordenamiento Burbuja.pdf|PDF]]
``` cpp
	# include <stdio.h>
	
	int Lista[8] = {70,80,50,20,35,90,60,42};
	int n = sizeof(Lista)/sizeof(int);
	int temp;
	int cambios = 0;
	
	void imprimirArreglo();
	
	int main() {
	  printf("\n\nArreglo de %d elementos:\n",n);
	  imprimirArreglo();
	  printf("\nOrdenando por Burbuja ...\n");
	
	  while(1) {
	    cambios = 0;
		
	    for(int i=0; i<(n-1); i++) {
	      if(Lista[i+1] < Lista[i]) {
	        temp = Lista[i+1];
	        Lista[i+1] = Lista[i];
	        Lista[i] = temp;
	        cambios = 1;
	      }  
	    }
	    if(cambios == 0) {
	      break;
	    }
		
	    imprimirArreglo();
	  }
	  printf("\n");
	}
	
	void imprimirArreglo() {
	  for(int k=0; k<n; k++) {
	    printf("%d ", Lista[k]);
	  }
	  printf("\n");
	}
```

Ordenamiento por el método _Selección_ [[Ordenamiento Seleccion.pdf|PDF]]
``` C
	//
```

Ordenamiento por el método _Mezcla_ [[Ordenamiento Mezcla.pdf|PDF]]
``` C
	//
```

### El problema de la búsqueda

Búsqueda _Binaria_
``` cpp
	# include <stdio.h>
	
	int busquedaBinaria();
	
	int main() {
		int arreglo[] = {2,3,4,8,12,18,23,45}
		int v = 6;
		printf("%i", busquedaBinaria(arreglo, v, 0, 7));
	}
	
	int busquedaBinaria() {
		int k = (i+j)/2;
		
		if(j>i)   // Condicion de Corte
			return -i;
		
		if(arr[k] == v)
			return k;
		else {
			if(arr[k] < v)
				i = k+1;
			else
				j = k-1;
				
			return busquedaBinaria(arr, v, i, j);   // Llamada Recursiva
		}
	}
```

Búsqueda _Indexada_

Búsqueda _Exhaustiva_

### Exploración exhaustiva y vuelta atrás 
Back-tracking
____
## UNIDAD II
~~Estructuras de datos lineales~~

### Pila
### Cola

### Listas

#### Estructuras de datos

Estructuras de datos en C
Una estructura es una colección de elementos, a estos elementos individuales de la estructura se les llama campos.

La palabra *struct* en C nos permite definir un tipo de datos nuevo con base en una colección de otros tipos de datos ya existentes.

En C++ _class_


Estructuras estáticas
Los arreglos son un tipo de estructuras de datos que contienen un número determinado de elementos y todos los elementos han de ser del mismo tipo, estas son estructuras de datos homogéneas.
Por ejemplo al declarar una arreglo de tipo PERSONA, arr\[10] (un arreglo con capacidad para contener hasta 10 personas) el programa reservará una cantidad de memoria fija más allá de que durante su ejecución la utilice o no.

``` cpp
class PERSONA {
	public:
		char nombre[30];
		long fechaNac;
		int estatura;
		int peso;
};

PERSONA arr[10];
```

#### Listas simplemente enlazadas

==Estructuras dinámicas== [[Estructuras de Datos en C.pdf|PDF]]
La diferencia con la Estructura estática esta dada en que la cantidad de elementos de la colección puede variar durante la ejecución del programa aumentando o disminuyendo y, en consecuencia, utilizando mayor o menor cantidad de memoria.
Un nodo simplemente es una estructura que define valores más una referencia (puntero de tipo Nodo*) para apuntar al siguiente nodo de la colección.

``` cpp
struct Nodo {
  int Dato;
  float Valor;
  struct Nodo *next;
}Nodo;
```

__Enlazar nuevo nodo__
``` cpp
# include <stdio.h>
# include <iostream>

struct NODO {
	int valor;
	NODO *sig;
};

typedef NODO *apunodo;

int main() {
	apunodo inicial, actual, aux;

	whi
}
```
__Mostrar lista de nodos__
__Buscar un nodo__
__Eliminar un nodo__

#### Listas doblemente enlazadas

Una lista doblemente enlazada es una estructura de datos que consiste en un conjunto de nodos enlazados secuencialmente. Cada nodo contiene al menos tres campos, dos para realizar el enlace, que son referencias al nodo siguiente y al anterior en la secuencia de nodos, y otro más para el almacenamiento de la información. 
Existen dos maneras de marcar el inicio y el final de una lista doblemente enlazada, esto puede ser haciendo que el enlace anterior del nodo inicial y el enlace siguiente del nodo final apunten a `NULL` o bien, se apunten a si mismos.

El doble enlace de los nodos permite recorrer la lista en cualquier dirección. Mientras que agregar o eliminar un nodo en una lista doblemente enlazada requiere cambiar más enlaces que en estas mismas operaciones en una lista enlazada simple, las operaciones son más simples porque no hay necesidad de mantener guardado el nodo anterior durante el recorrido, ni necesidad de recorrer la lista para hallar el nodo anterior, la referencia al nodo que se quiere eliminar o insertar es lo único necesario.

#### Listas circulares


### Tablas hash

## UNIDAD III
~~Estructuras de datos no lineales~~
____
### Arboles Binarios
### Grafos

## TAREAS

____
### Tarea 1
Tipos de Algoritmos

### Tarea 2
Definiciones de 'Algoritmos' y 'Estructuras de datos'

Algoritmos
Un *algoritmo* es un conjunto de pasos definidos diseñados para cumplir un objetivo específico. Puede tratarse de un proceso simple, como una receta para hornear un pastel, o una serie compleja de operaciones utilizadas en el aprendizaje automático para analizar grandes conjuntos de datos y hacer predicciones. En este contexto, los algoritmos son fundamentales, ya que facilitan el proceso de aprendizaje de las máquinas, ayudándolas a identificar patrones y tomar decisiones basadas en datos.

Los algoritmos son conjuntos estructurados de instrucciones diseñados para resolver problemas específicos o realizar tareas particulares. Funcionan mediante una serie de pasos bien definidos, cada uno de los cuales contribuye al objetivo final. A continuación, se desglosan las etapas típicas en el funcionamiento de un algoritmo:

1. _Entrada._ El primer paso consiste en definir los datos de entrada que usará el algoritmo. Las entradas son la información sobre la cual operará el algoritmo. Pueden ser desde un solo valor hasta estructuras de datos complejas.
    
2. _Procesamiento._ Esta es la fase central donde el algoritmo realiza operaciones sobre las entradas mediante una serie de pasos computacionales. Esta fase se guía por cálculos lógicos y aritméticos para procesar los datos de manera eficiente. Dentro de la fase de procesamiento, hay subpasos cruciales:
    - _Toma de decisiones._ En varios puntos del procesamiento, es necesario tomar decisiones basadas en ciertas condiciones. Este subpaso dirige el flujo del algoritmo mediante declaraciones condicionales, lo que puede llevar a diferentes caminos dentro del algoritmo.
    - _Iteraciones._ En muchos algoritmos, ciertos pasos deben repetirse múltiples veces hasta que se cumpla una condición específica. Los bucles permiten ejecutar los mismos pasos repetidamente, optimizando el proceso y ahorrando tiempo.
    
3. _Salida._ Después de procesar los datos de entrada a través de varios cálculos y condiciones, el algoritmo genera una salida. Esta salida es el resultado de las operaciones realizadas por el algoritmo y se usa para resolver el problema o completar la tarea en cuestión.
    
4. _Finalización._ Un algoritmo debe tener un punto de detención definido para evitar que se ejecute indefinidamente. Una vez que todos los pasos se han ejecutado con éxito y se ha producido la salida, el algoritmo alcanza su punto de finalización.

Estructuras de datos
Las estructuras de datos existen tanto en el mundo digital como en el físico. Un diccionario es un ejemplo físico de una estructura de datos, donde la información consiste en definiciones de palabras organizadas en orden alfabético dentro de un libro. Esta organización permite realizar una consulta específica. En esencia, una estructura de datos es un método para organizar la información que facilita tipos específicos de consultas y operaciones sobre esos datos.

En programación existen estructuras simples como


Referencias
Data Camp Team. (2023). **What Is an Algorithm?**. Recuperado 14 febrero 2025 de Data Camp, [https://www.datacamp.com/blog/what-is-an-algorithm](https://www.datacamp.com/blog/what-is-an-algorithm)

François Aubry. (2024). **Data Structures: A Comprehensive Guide With Python Examples**. Recuperado 14 febrero 2025 de Data Camp, [https://www.datacamp.com/tutorial/data-structures-guide-python](https://www.datacamp.com/tutorial/data-structures-guide-python)

### Tarea Exposición
Representación de grafos en listas y matrices de adyacencia