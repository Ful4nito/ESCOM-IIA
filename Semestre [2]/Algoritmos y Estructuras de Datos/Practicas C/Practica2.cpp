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