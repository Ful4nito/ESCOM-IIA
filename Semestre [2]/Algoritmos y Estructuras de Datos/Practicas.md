## UNIDAD I
____
### Práctica 1

__Ordenamiento Burbuja__  180225
Un programa que pide al usuario cuantos números aleatorios desea generar, estos estarán en el rango de 0 a 100, posteriormente serán ordenados con el método _burbuja_ aplicando solamente una iteración.

``` cpp
// Baez Pacheco Jonathan Leon

# include <stdio.h>
# include <stdlib.h>
# include <time.h>

int arr[100];
int n = 0;
int temp = 0;
int pasadas = 1;

int main() {
  srand(time(NULL));
  printf("\nCantidad de numeros aleatorios: ");
  scanf("%i", &n);

  for (int i=0; i<n; i++) {
    arr[i] = rand() % 101;
    printf("%i\t", arr[i]);
  }
  printf("\n");

  for(int i=0; i<pasadas; i++) {
    for (int j=0; j<(n-1); j++) {
      if(arr[j]>arr[j+1]) {
        temp = arr[j+1];
        arr[j+1] = arr[j];
        arr[j] = temp;
      }
    }

    for(int i=0; i<n; i++)
      printf("%i\t", arr[i]);
    printf("\n\n");
  }
}
```
____
### Práctica 2

__Objeto con datos ingresados por el usuario__  250225
Genere un programa que pida al usuario que inserte los datos de un alumno tales como Nombre completo, Boleta y grupo, estos deberán ser almacenados en un objeto, puede ser utilizando _class_ ó _struct_ , después mostrar los datos del alumno en pantalla.

``` cpp
// Baez Pacheco Jonathhan Leon      

#include <stdio.h>
#include <stdlib.h>

class ALUMNO{
  public:
    char nombre[30];
    int boleta;
    char grupo[5];
} Alumno;

int main (void) {
  
    printf("Inserte nombre del alumno: ");
    scanf("%[^\n]s", Alumno.nombre);
    printf("Boleta: ");
    scanf("%i", &Alumno.boleta);
    printf("Grupo: ");
    scanf("%s", Alumno.grupo);
  
    printf("\n 1  %-30s %-11i %-5s\n", Alumno.nombre, Alumno.boleta, Alumno.grupo);

}
```
____
### Práctica 3

__Lista simplemente enlazada: agregar y mostrar objeto__
``` cpp
// Baez Pacheco Jonathan Leon   

# include <stdio.h>
# include <iostream>

struct NODO {
	int valor;
	NODO* sig;
};

int main(void) {
  NODO *inicial, *actual;

  inicial = new(NODO);
  inicial->valor = 5;
  inicial->sig = new(NODO);

  actual = inicial->sig;
  actual->valor = 10;
  actual->sig = new(NODO);
  
  actual = actual->sig;
  actual->valor = 15;
  actual->sig = NULL;

  actual = inicial;

  while(actual->sig != NULL) {
    printf(" %i\n", actual->valor);
    actual = actual->sig;
  }
  printf(" %i\n", actual->valor);

}
```
____
### Práctica 4

__Lista simplemente enlazada: agregar al inicio, al final y mostrar objetos__
``` cpp
// Baez Pacheco Jonathan Leon 

# include <stdio.h>
# include <iostream>

struct nodo {
  int valor;
  nodo *sig;
};

typedef nodo *apunodo;

apunodo inicial, aux, actual;

int menu = 1;
int opcion = 0;
int i = 0;

int main() {
  inicial = NULL;
  aux = NULL;
  actual = NULL;
  
  printf("\n Lista simplemente ligada");
  printf("\n |  1 Agregar nodo      |");
  printf("\n |  2 Mostrar lista     |");
  printf("\n |  3 Salir             |");
  printf("\n ========================");

  while (menu == 1) {
    printf("\n Que opcion quieres >> ");
    scanf("%i", &opcion);
    
    switch (opcion) {
      case 1:
        aux = new nodo;
        if (aux == NULL) {
          printf("\n No hay mas espacio en la memoria.");
          break;
        }
        printf(" Inserte valor: ");
        scanf("%i", &aux->valor);
        aux->sig = NULL; 

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
          break;
        }
        actual->sig = aux;
        actual = aux;

        break;
      case 2:
        aux = inicial;
        if (aux == NULL) {
          printf("\n La lista esta vacia.");
          break;
        }
        
        i = 0;
        while (aux->sig != NULL) {
          printf("\n Nodo %-4i Valor %i", i+1, aux->valor);
          aux = aux->sig;
          i += 1;
        }
        printf("\n Nodo %-4i Valor %i\n", i+1, aux->valor);

        break;
      case 3:
        menu = 0;
        break;
      default:
        break;
    }
  }
}
```
____
### Práctica 5

__Lista simplemente enlazada: agregar al inicio, al final, mostrar y eliminar objetos__
``` cpp
// Baez Pacheco Jonathan Leon

# include <stdio.h>
# include <iostream>

struct ALUMNO {
  int boleta;
  char nombre[15];
  float promedio;
  ALUMNO *sig;
};

typedef ALUMNO *apunodo;
apunodo inicial, actual, aux;

int menu = 1;
int opcion = 0;
int dato = 0;

int main(void) {
  inicial = NULL;
  actual = NULL;
  aux = NULL;

  printf("\n Lista de alumnos simplemente ligada");
  printf("\n |  1 Insertar nodo al inicio      |");
  printf("\n |  2 Insertar nodo al final       |");
  printf("\n |  3 Mostrar todos los nodos      |");
  printf("\n |  4 Buscar valor por boleta      |");
  printf("\n |  5 Salir                        |");
  printf("\n ===================================");
  
  while(menu == 1) {
    printf("\n Elija una opcion >> ");
    scanf("%i", &opcion);

    switch(opcion) {
      case 1:
        aux = new ALUMNO;

        if (aux == NULL) {
          printf("  No hay mas espacio en memoria.\n");
          break;
        }
        printf("  Inserte boleta del alumno: ");
        scanf("%i", &aux->boleta);
        printf("  Inserte nombre del alumno: ");
        scanf("%s", aux->nombre);
        printf("  Inserte promedio del alumno: ");
        scanf("%f", &aux->promedio);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
          break;
        }
        aux->sig = inicial;
        inicial = aux;
        break;

      case 2:
        aux = new ALUMNO;

        if (aux == NULL) {
          printf(" No hay mas espacio en memoria.\n");
          break;
        }
        printf("  Inserte boleta del alumno: ");
        scanf("%i", &aux->boleta);
        printf("  Inserte nombre del alumno: ");
        scanf("%s", aux->nombre);
        printf("  Inserte promedio del alumno: ");
        scanf("%f", &aux->promedio);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
          break;
        }
        actual->sig = aux;
        actual = aux;
        break;

      case 3:
        if (inicial == NULL) {
          printf(" La lista esta vacia\n");
          break;
        }

        aux = inicial;
        printf("\n %-12s %-12s %s \n", "BOLETA", "NOMBRE", "PROMEDIO");
        while (aux->sig != NULL) {
          printf(" %-12i %-12s %.1f\n", aux->boleta, aux->nombre, aux->promedio);
          aux = aux->sig;
        }
        printf(" %-12i %-12s %.1f\n", aux->boleta, aux->nombre, aux->promedio);
        break;
      
      case 4:
        if (inicial == NULL) {
          printf("  La lista esta vacia\n");
          break;
        }
        printf("  Boleta que quiere buscar: ");
        scanf("%i", &dato);
        aux = inicial;
        while ((dato != aux->boleta) && (aux->sig != NULL)) {
          aux = aux->sig;
        }
        if (dato != aux->boleta) {
          printf("\n  No se encontro el alumno.\n");
          break;
        }
        else {
          printf("\n %-12s %-12s %s \n", "BOLETA", "NOMBRE", "PROMEDIO");
          printf(" %-12i %-12s %.1f\n", aux->boleta, aux->nombre, aux->promedio);
        }
        break;

      case 5:
        menu = 0;
        break;

      default:
        break;
    }
  }
}
```
____
## UNIDAD II
____
### Práctica 6

__Lista enlazada__
``` cpp
// Baez Pacheco Jonathan Leon

# include <stdio.h>
# include <time.h>
# include <iostream>

struct nodo {
  int valor;
  nodo *sig;
};

typedef nodo *apunodo;
apunodo inicial, anterior, actual, aux;

int menu = 1;
int opcion = 0;
int dato = 0;
int renglon = 0;
int cambios = 0;
int n = 0;
int i = 0;

int main(void) {
  inicial = NULL;
  anterior = NULL;
  actual = NULL;
  aux = NULL;

  srand(time(NULL));

  printf("\n  Lista de alumnos simplemente ligada");
  printf("\n  |  1 Agragar nodo al inicio       |");
  printf("\n  |  2 Agregar nodo al final        |");
  printf("\n  |  3 Agregar nodo ordenadamente   |");
  printf("\n  |  4 Generar lista de n nodos     |");
  printf("\n  |  5 Mostrar todos los nodos      |");
  printf("\n  |  6 Ordenar por burbuja          |");
  printf("\n  |  7 Buscar nodo por valor        |");
  printf("\n  |  8 Eliminar nodo por valor      |");
  printf("\n  |  9 Elininar lista               |");
  printf("\n  | 10 SALIR                        |");
  printf("\n  ===================================\n");
  
  while(menu == 1) {
    printf("\n  Elige una operacion >>> ");
    scanf("%i", &opcion);

    switch(opcion) {
/* ------------------------------------------------------------------------------------- */        
      case 1: //                           <===  Agregar nodo al inicio               1
        aux = new nodo;

        if (aux == NULL) {
          printf("  No hay más espacio en memoria.\n");
          break;
        }

        printf("  Inserte el nuevo valor: ");
        scanf("%i", &aux->valor);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
        }
        else {
          aux->sig = inicial;
          inicial = aux;
        }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 2: //                           <===  Agregar nodo al final                2
        aux = new nodo;

        if (aux == NULL) {
          printf("  No hay mas espacio en memoria.\n");
          break;
        }

        printf("  Inserte el nuevo valor: ");
        scanf("%i", &aux->valor);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
        }
        else {
          actual = inicial;
          
          while (actual->sig != NULL) {
            actual = actual->sig;
          }
          actual->sig = aux;
          actual = aux;
        }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 3: //                           <===  Agregar nodo ordenadamente           3       
        aux = new nodo;

        if (aux == NULL) {
          printf("  No hay mas espacio en memoria.\n");
          break;
        }

        printf("  Inserte el nuevo valor: ");
        scanf("%i", &aux->valor);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
        }
        else {
          actual = inicial;

          if (aux->valor < actual->valor) {
            aux->sig = actual;
            inicial = aux;
          }
          else {
            while (actual->valor <= aux->valor && actual->sig != NULL) {
              anterior = actual;
              actual = actual->sig;
            }

            if (actual->valor > aux->valor) {
              aux->sig = actual;
              anterior->sig = aux;
            }
            else {
              actual->sig = aux;
            }
          }  
        }  
        break;

/* ------------------------------------------------------------------------------------- */        
      case 4: //                           <===  Generar lista de numeros aleatorios  4
          printf("  Cuantos nodos: ");
          scanf("%i", &n);

          for (i=0; i < n; i++) {
            aux = new nodo;
            aux->valor = rand() % 101;
            aux->sig = NULL;

            if (inicial == NULL) {
              inicial = aux;
            }
            else {
              actual = inicial;
              while (actual->sig != NULL) {
                actual = actual->sig;  
              }
              actual->sig = aux;
            }
          }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 5: //                           <===  Mostrar lista de nodos               5     
        if (inicial == NULL) {
          printf("  La lista esta vacia.\n");
          break;
        }

        printf("\n");
        for (renglon = 0; renglon < 5; renglon ++) {
          aux = inicial;
          while (aux->sig != NULL) {
            if (renglon == 0 || renglon == 4) {
              printf(" ========    ");
            }
            else if (renglon == 1 || renglon == 3) {
              printf(" |      |    ");
            }
            else {
              printf(" |  %-3i | ==>", aux->valor);
            }
            aux = aux->sig;
          }
          if (renglon == 0 || renglon == 4) {
            printf(" ========\n");
          }
          else if (renglon == 1 || renglon == 3) {
            printf(" |      |\n");
          }
          else {
            printf(" |  %-3i |\n", aux->valor);
          }
        }  
        printf("\n");
        break;
      
/* ------------------------------------------------------------------------------------- */        
      case 6: //                          <===  Ordenamiento burbuja                  6 
        if (inicial == NULL) {
          printf("  La lista esta vacia. \n");
          printf("  No hay numeros que ordenar.\n");
          break;
        }
        else if (inicial->sig == NULL){
          break;
        }

        cambios = 1;
        printf("  Ordenando ...\n  ");

        while (cambios == 1) {
          cambios = 0;
          aux = inicial;
          actual = inicial->sig;

          while (actual != NULL ) {
            if (aux->valor > actual->valor) {
              cambios = 1;
              aux->sig = actual->sig; // Reenlazar nodos
              actual->sig = aux;      // inicio en intermedio

              if (aux == inicial) {
                inicial = actual;
              }
              else {
                anterior->sig = actual;
              }
              
              anterior = actual;
              actual = aux->sig;
            }
            else { // Avanzar nodos 
              anterior = aux;
              aux = actual;
              actual = actual->sig;
            }
          }
        }
        printf("  Nodos ordenados exitosamente\n");
        break;

/* ------------------------------------------------------------------------------------- */        
      case 7: //                           <===  Buscar nodo y mostrar ubicacion      7
        if (inicial == NULL) {
          printf("  La lista esta vacia.\n");
          break;
        }

        printf("  Inserte valor a buscar: ");
        scanf("%i", &dato);
        aux = inicial;
        while ((dato != aux->valor) && (aux->sig != NULL)) {
          aux = aux->sig;
        }

        if (dato != aux->valor) {
          printf("  No se encontro el nodo con valor %i\n", dato);
          break;
        }
        else {
          printf("  La ubicacion del nodo es %p\n", aux);
        }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 8: //                           <===  Eliminar nodo dada una condicion     8
        if (inicial == NULL) {
          printf("  La lista esta vacia.\n");
          break;
        }

        printf("  Inserte valor a eliminar: ");
        scanf("%i", &dato);
        
        actual = inicial;
        anterior = inicial;

        while (actual->sig != NULL) {
          if (inicial == actual) { 
            if (actual->valor == dato) { // Condicion 
              inicial = inicial->sig;
              actual = inicial;
              delete(anterior);
            }
            else {
              actual = actual->sig;
            }
          }
          else if (actual->valor == dato) { // Condicion
            anterior->sig = actual->sig;
            delete(actual);
            actual = anterior->sig;
          }
          else {
            actual = actual->sig;
            anterior = anterior->sig;
          }
        }
        if (actual->valor == dato) { // Condicion
          anterior->sig = NULL;
          delete(actual);
        }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 9: //                           <===  Eliminar todos los nodos             9 
        if (inicial == NULL) {
          printf("  La lista esta vacia.\n");
          break;
        }

        aux = inicial;
        while (inicial->sig != NULL) {
          inicial = inicial->sig;
          delete(aux);
          aux = inicial;
        }
        delete(aux);
        inicial = NULL;
        printf("  Nodos eliminados.\n");

        break;

/* ------------------------------------------------------------------------------------- */        
      case 10: //                          <===  SALIR                               10 
        menu = 0;
        break;

/* ------------------------------------------------------------------------------------- */        
      default:
        printf("  Opcion no valida. \n");
        break;
    }
  }
}
```

____
### Práctica 7

__Quien sabe__
``` cpp
// Jonathan Leon Baez Pacheco 

# include <stdio.h>
# include <iostream>

struct NODO {
  int valor;
  NODO *sig, *ant;
};

NODO *inicial, *aux, *actual;

int menu = 1;
int opcion = 0;

int main () {
  inicial = NULL;
  aux = NULL;
  actual = NULL;


  printf("\n  Lista de nodos doblemente enlazada");
  printf("\n  | 1 Agregar nodo al inicio       |");
  printf("\n  | 2 Agregar nodo al final        |");
  printf("\n  | 3 Mostrar nodos                |");
  printf("\n  | 4 SALIR                        |");
  printf("\n  ==================================");

  while (menu == 1) {
    printf("\n   Elige una opcion >>> ");
    scanf("%i", &opcion);

    switch (opcion) {
    case 1 : // INSERTAR AL INICIO
      aux = new(NODO);
      if (aux == NULL) {
        printf("   No hay mas espacio en memoria.\n");
      }
      else {
        printf("   Inserte valor: ");
        scanf("%i", &aux->valor);
      
        if (inicial == NULL) {
          inicial = aux;
          aux->sig = NULL;
          aux->ant = NULL;
        }
        else {
          aux->sig = inicial;
          aux->ant = NULL;
          inicial = aux;
        }
      }
      break;

    case 2 : // INSERTAR AL FINAL
    aux = new(NODO);
    if (aux == NULL) {
      printf("   No hay mas espacio en memoria.\n");
    }
    else {
      printf("   Inserte valor: ");
      scanf("%i", &aux->valor);
      
      if (inicial == NULL) {
        inicial = aux;
        aux->sig = NULL;
        aux->ant = NULL;
      }
      else {
        actual = inicial;
        while (actual->sig != NULL) {
          actual = actual->sig;
        }
        actual->sig = aux;
        aux->ant = actual;
        aux->sig = NULL;
      }
    }
    break;

    case 3 : // MOSTRAR NODOS
      if (inicial == NULL) {
        printf("   La lista esta vacia.\n");
        break;
      }

      printf("  ");
      actual = inicial;
      while (actual->sig != NULL) {
        printf("%3i  ", actual->valor);
        actual = actual->sig;
      }
      printf("%3i  \n", actual->valor);
      break;

    case 4 :
      menu = 0;
      break;
    
    default:
      break;
    }
  }
  
}
```

### Práctica 8

__Pila simplemente enlazada__
``` cpp
// Baez Pacheco Jonathan Leon  

# include <stdio.h>

struct NODO {
  int valor;
  NODO *sig;
};

NODO *tope, *aux;

int opcion = 0;
int menu = 1;
int dato = 0;

int main () {
  tope = NULL;
  aux = NULL;

  printf("\n  Pila simplemente enlazada");
  printf("\n  |  1 Agregar Nodo       |");
  printf("\n  |  2 Extraer Nodo       |");
  printf("\n  |  3 Mostrar Tope       |");
  printf("\n  |  4 SALIR              |");
  printf("\n  =========================");

  while (menu == 1) {
    printf("\n   Opcion >>> ");
    scanf("%i", &opcion);

    switch (opcion) {
      case 1:
        aux = new NODO;
        if (aux != NULL) {
          printf("   Inserte valor: ");
          scanf("%i", &aux->valor);
          if (tope == NULL) {
            aux->sig = NULL;
          }
          else {
            aux->sig = tope;
          }
          tope = aux;
        }
        else {
          printf("   ! No hay seficiente espacio en memoria");
        }
        break;
          
      case 2:
        if (tope != NULL) {
          aux = tope;
          printf("   Nodo %i eliminado\n", aux->valor);
          tope = tope->sig;
          delete(aux);
        }
        else {
          printf("   ! La lista esta vacia\n");
        }
        break;
        
      case 3:
        if (tope != NULL) {
          printf("   El tope es: %i\n", tope->valor);
        }
        else {
          printf("   ! La lista esta vacia\n");
        }
        break;
        
      case 4:
        printf("   Finalizado.\n\n");
        menu = 0;
        break;

      default:
        printf("   ! Opcion no valida\n");
        break;
    }
  }

}

```

### Practica 9

``` cpp
// Baez Pacheco Jonathan Leon 

# include <stdio.h>
# include <iostream>

struct nodo {
  int valor;
  nodo *sig;
};

typedef nodo *apu_nodo;

apu_nodo salida, entrada, aux;

int opcion = 0;
int menu = 1;

int main (void) {
  salida = NULL;
  entrada = NULL;
  aux = NULL;

  printf("\n  ===== Cola dinamica =====");
  printf("\n  |  1 Agregar            |");
  printf("\n  |  2 Mostrar            |");
  printf("\n  |  3 Extraer o Borrar   |");
  printf("\n  |  4 SALIR              |");
  printf("\n  =========================");

  while (menu == 1) {   
    printf("\n  Elija una opcion >> ");
    scanf("%i", &opcion);
    switch (opcion) {
      case 1:
        aux = new nodo;
        if(aux != NULL) {
          printf("  Inserte valor: ");
          scanf("%i", &aux->valor);
          if (entrada == NULL) {
            aux->sig = NULL;
            entrada = aux;
            salida = aux;
          }
          else {
            entrada->sig = aux;
            aux->sig = NULL;
            entrada = aux;
          }
        }
        break;
      
      case 2:
        if (salida == NULL) {
          printf("  ! La cola esta vacia.\n");
        }
        else {
          printf("  Valor de Salida: %i\n", salida->valor);
        }
        break;
      
      case 3:
        if (salida == NULL) {
          printf("  ! La cola esta vacia.\n");
        }
        else if (entrada == salida) {
          printf("  Valor %i eliminado\n", salida->valor);
          delete (salida);
          entrada = NULL;
          salida = NULL;
        }
        else {
          aux = salida;
          printf("  Valor %i eliminado\n", aux->valor);
          salida = salida->sig;
          delete (aux);
          aux = NULL;
        }
        break;
      
      case 4:
        menu = 0;
        break;
      
      default:
        break;
    }
  }
}
```

### Practica 10

Proximamente practica 10
``` cpp
// Baez Pacheco Jonathan Leon  

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int arr[100];
int n = 0;
int i = 0;
int j = 0;

int k = 0;
int cambios = 0;

int minimo = 0;
int temp = 0;

int main () {
  srand(time(NULL));

  printf("\n ===== Ordenamiento por Seleccion =====");
  printf("\n  Cuantos numeros desea generar > ");
  scanf("%i", &n);

  printf("  ");
  for (i=0; i<n; i++) {
    arr[i] = rand() % 101;
    printf(" %-3i", arr[i]);
  }
  printf("\n");

  for (i=0; i<n; i++) {
    cambios = 0;
    temp = arr[i];
    for (j=i+1; j<n; j++) {
      if (arr[j] < temp) {
        temp = arr[j];
        minimo = j;
        cambios = 1;
      }
    }

    arr[minimo] = arr[i];
    arr[i] = temp;
    
    if (cambios == 1) {
      printf("\n  ");
      for (k=0; k<n; k++) {
        printf(" %-3i", arr[k]);
      }
    }
  }
}
```


## UNIDAD III
### Practica 11

Recorrido de Arboles Binarios
``` cpp
// Baez Pacheco Jonathan Leon 

# include <stdio.h>
# include <stdlib.h>

struct nodo {
  int valor;
  nodo *izq, *der;
};

typedef nodo *apu_nodo;
apu_nodo raiz, aux, actual;

void preorden(nodo *actual);
void postorden(nodo *actual);
void inorden(nodo *actual);

//          21      
//       /      \
//      14       9   
//     / \      / \
//    N   7    3   6
//       / \  / \ / \
//       N N  N N N N 

int main () {
  raiz = NULL;
  aux = NULL;
  actual = NULL;

  raiz = new nodo;
  raiz->valor = 21;

  aux = new nodo;
  aux->valor = 14;
  aux->izq = NULL;
  raiz->izq = aux;
  
  aux = new nodo;
  aux->valor = 9;
  raiz->der = aux;
  
  aux = new nodo;
  aux->valor = 7;
  aux->der = NULL;
  raiz->izq->der = aux;
  
  aux = new nodo;
  aux->valor = 3;
  aux->izq = NULL;
  aux->der = NULL;
  raiz->der->izq = aux;
  
  aux = new nodo;
  aux->valor = 6;
  aux->izq = NULL;
  aux->der = NULL;
  raiz->der->der = aux;
  
  aux = new nodo;
  aux->valor = 5;
  aux->izq = NULL;
  printf("\n");
  aux->der = NULL;
  raiz->izq->der->izq = aux;

  actual = raiz;

  printf("\n Preorden  > ");
  preorden(raiz);

  printf("\n Postorden > ");
  postorden(raiz);

  printf("\n Inorden   > ");
  inorden(raiz);
}

void preorden (nodo *actual) {
  if(actual != NULL) {
    printf(" %d", actual->valor);
    preorden(actual->izq);
    preorden(actual->der);
  }
}

void inorden (nodo *actual) {
  if(actual != NULL) {
    inorden(actual->izq);
    printf(" %d", actual->valor);
    inorden(actual->der);
  }
}

void postorden (nodo *actual) {
  if(actual != NULL) {
    postorden(actual->izq);
    postorden(actual->der);
    printf(" %d", actual->valor);
  }
}
```

### Practica 12

``` cpp
// Baez Pacheco Jonathan Leon 

struct nodo {
	char pregunta[50];
	nodo *izq, *der;
}

```