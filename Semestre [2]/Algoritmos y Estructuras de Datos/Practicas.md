## UNIDAD I
__Algoritmos fundamentales__
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
  
  while (menu == 1) {
    printf("\n Lista simplemente ligada\n");
    printf("   1 Agregar nodo\n");
    printf("   2 Mostrar lista\n");
    printf("   3 Salir\n");
    printf("   Que opcion queres: ");
    scanf("%i", &opcion);
    
    switch (opcion) {
      case 1:
        aux = new nodo;
        if (aux == NULL) {
          printf("  No hay mas espacio en la memoria.\n");
          break;
        }
        printf("   Inserte valor: ");
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
          printf("\n La lista esta vacia.\n");
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

  while(menu == 1) {
    printf("\n Lista de alumnos simplemente ligada\n");
    printf("    1 Insertar nodo al inicio\n");
    printf("    2 Insertar nodo al final\n");
    printf("    3 Mostrar todos los nodos\n");
    printf("    4 Buscar valor por boleta\n");
    printf("    5 Salir\n");
    printf("    Elija una opcion: ");
    scanf("%i", &opcion);

    switch(opcion) {
      case 1:
        aux = new ALUMNO;

        if (aux == NULL) {
          printf(" No hay mas espacio en memoria.\n");
          break;
        }
        printf("\n    Inserte boleta del alumno: ");
        scanf("%i", &aux->boleta);
        printf("    Inserte nombre del alumno: ");
        scanf("%s", aux->nombre);
        printf("    Inserte promedio del alumno: ");
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
        printf("\n    Inserte boleta del alumno: ");
        scanf("%i", &aux->boleta);
        printf("    Inserte nombre del alumno: ");
        scanf("%s", aux->nombre);
        printf("    Inserte promedio del alumno: ");
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
          printf(" La lista esta vacia\n");
          break;
        }
        printf("\n Boleta que quiere buscar: ");
        scanf("%i", &dato);
        aux = inicial;
        while ((dato != aux->boleta) && (aux->sig != NULL)) {
          aux = aux->sig;
        }
        if (dato != aux->boleta) {
          printf("\n No se encontro el alumno.\n");
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
__Estructuras de datos lineales__
____
### Práctica 6
__Lista enlazada__

``` cpp
// Baez Pacheco Jonathan Leon

# include <stdio.h>
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

int main(void) {
  inicial = NULL;
  anterior = NULL;
  actual = NULL;
  aux = NULL;

  printf("\n  Lista de nodos simplemente enlazada\n");
  printf("  |  1 Agragar nodo al inicio       |\n");
  printf("  |  2 Agregar nodo al final        |\n");
  printf("  |  3 Agregar nodo ordenadamente   |\n");
  printf("  |  4 Mostrar todos los nodos      |\n");
  printf("  |  5 Buscar nodo por valor        |\n");
  printf("  |  6 Eliminar nodo por valor      |\n");
  printf("  |  7 Ordenar por burbuja          |\n");
  printf("  |  8 SALIR                        |\n");
  printf("  ===================================\n");
  
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
          break;
        }
        aux->sig = inicial;
        inicial = aux;
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
          break;
        }
        actual = inicial;
        
        while (actual->sig != NULL) {
          actual = actual->sig;
        }
        actual->sig = aux;
        actual = aux;
        break;

/* ------------------------------------------------------------------------------------- */        
      case 3: //                           <===  Agregar nodo ordenadamente      3       
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
      case 4: //                           <===  Mostrar lista de nodos               4     
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
      case 5: //                           <===  Buscar nodo y mostrar ubicacion      5
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
      case 6: //                           <===  Eliminar nodo dada una condicion     6
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
            if (actual->valor == dato) {
              inicial = inicial->sig;
              actual = inicial;
              delete(anterior);
            }
            else {
              actual = actual->sig;
            }
          }
          else if (actual->valor == dato) {
            anterior->sig = actual->sig;
            delete(actual);
            actual = anterior->sig;
          }
          else {
            actual = actual->sig;
            anterior = anterior->sig;
          }
        }
        if (actual->valor == dato) {
          anterior->sig = NULL;
          delete(actual);
        }

        break;

/* ------------------------------------------------------------------------------------- */        
      case 7: //                          <===  Ordenar por burbuja dinamicamente     7 
        if (inicial == NULL) {
          printf("  La lista esta vacia. \n");
          printf("  No hay numeros que ordenar.");
        }
        cambio = 0;
        aux = inicial;
        actual = inicial->sig;

        while (actual->sig != NULL) {
          if (aux->valor > actual->valor) {
            aux->sig = actual->sig;
            actual->sig = aux;
            cambio = 1;

            if ((aux == inicial) && (cambio == 1)) {
              inicial = aux;
              break;
            }
            else if (cambio == 1) {
              anterior->sig = actual;
 
              anterior = actual;
              actual = aux->sig;
            }
            cambio = 0;
          }
        }
/* ------------------------------------------------------------------------------------- */        
      case 8: //                          <===  SALIR                                 8 
        menu = 0;
        break;

      default:
        break;
    }
  }
}
```

____
### Práctica 7
__Quien sabe__
``` cpp
// Baez Pacheco Jonathan Leon
```

## Práctica Nodos
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

  printf("\n  Lista de nodos simplemente enlazada\n");
  printf("  |  1 Agragar nodo al inicio       |\n");
  printf("  |  2 Agregar nodo al final        |\n");
  printf("  |  3 Agregar nodo ordenadamente   |\n");
  printf("  |  4 Generar lista de n nodos     |\n");
  printf("  |  5 Mostrar todos los nodos      |\n");
  printf("  |  6 Ordenar por burbuja          |\n");
  printf("  |  7 Buscar nodo por valor        |\n");
  printf("  |  8 Eliminar nodo por valor      |\n");
  printf("  |  9 Elininar lista               |\n");
  printf("  | 10 SALIR                        |\n");
  printf("  ===================================\n");
  
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
                anterior = actual;
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