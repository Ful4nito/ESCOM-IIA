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
char dato_nombre[25];
char dato_pregunta[100];

int main () {
  raiz = new nodo;
  raiz = NULL;
  
  printf("\n Abriendo archivo .... ");
  F = fopen("conocimiento.txt", r);
  if (F == NULL) {
    printf("\n Error al abrir el archivo.");
    return 1;
  }
  printf(" Correcto");

  printf("\n Obteniendo datos de Fila 1");
  fscanf(F, "%d.%25[^.].%100[^\n]", &id, dato_nombre, dato_pregunta);
  printf("\n %d  %s  %s", id, dato_nombre, dato_pregunta);

  fclose(F);
}
