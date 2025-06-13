// Baez Pacheco Jonathan Leon

# include <stdio.h>

struct nodo;
struct lista;

struct nodo {
  char nombre[25];
  char pregunta[100]; 
  lista *inicial;
};

struct lista {
  nodo *hijo;
  lista *sig;
};

nodo *raiz;
FILE *F;
int id = 0;

int main () {
  raiz = new nodo;
  raiz = NULL;
    
  F = fopen("conocimiento.txt", r);
  if (F == NULL) {
    printf("\n Error al abrir el archivo.");
    return 1;
  }

  fscanf(archivo, "%d.%25[^.].%100[^\n]", &id, nombre, pregunta)

  fscanf(,"");

  printf("\n Nodo raiz inicializado a NULL");
}
