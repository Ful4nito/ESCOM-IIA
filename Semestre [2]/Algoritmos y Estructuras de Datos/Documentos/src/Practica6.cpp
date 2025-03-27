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
int divisor = 3;

int main(void) {
  inicial = NULL;
  anterior = NULL;
  actual = NULL;
  aux = NULL;

  printf("\n  Lista de alumnos simplemente ligada\n");
  printf("  |  1 Agragar nodo al inicio       |\n");
  printf("  |  2 Agregar nodo al final        |\n");
  printf("  |  3 Agregar nodo ordenadamente   |\n");
  printf("  |  4 Mostrar todos los nodos      |\n");
  printf("  |  5 Buscar nodo por valor        |\n");
  printf("  |  6 Eliminar nodo por condicion  |\n");
  printf("  |  7 SALIR                        |\n");
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
        printf("\n  Inserte el nuevo valor: ");
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
        printf("\n  Inserte el nuevo valor: ");
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

        printf("\n  Inserte el nuevo valor: ");
        scanf("%i", &aux->valor);
        aux->sig = NULL;

        if (inicial == NULL) {
          inicial = aux;
          actual = aux;
          break;
        }

        actual = inicial;

        if (aux->valor < actual->valor) {
          aux->sig = actual;
          inicial = aux;
          break;
        }
        
        while (aux->valor > actual->valor && actual->sig != NULL) {
          anterior = actual;
          actual = actual->sig;
        }

        if (actual->sig == NULL) {
          actual->sig = aux;
          break;
        }
        aux->sig = actual;
        anterior->sig = aux;
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

        printf("\n  Inserte valor a buscar: ");
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

        actual = inicial;
        if ((inicial->valor%divisor) == 0) {
          inicial = inicial->sig;
          delete(actual);
        }

        anterior = inicial;
        actual = inicial->sig;
        while (actual->sig != NULL) {
          if ((actual->valor%divisor) == 0) {
            anterior->sig = actual->sig;
            actual = actual->sig;
            delete(actual);
          }
          else {
            anterior = actual;
            actual = actual->sig;
          }
        }

        if ((actual->valor%divisor) == 0) {
          anterior->sig = NULL;
          delete(actual);
        }
        break;

/* ------------------------------------------------------------------------------------- */        
      case 7: //                          <===  SALIR                                 7 
        menu = 0;
        break;

      default:
        break;
    }
  }
}
