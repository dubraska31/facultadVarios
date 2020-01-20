#include <stdio.h>
#include <stdlib.h>

/*Ejercicio 2:
Se tiene un edificio de 6 pisos y 4 departamentos por piso ('A','B','C',D'). Los
departamentos están modelados por la siguiente estructura: typedef struct {
char unidad;
float expensas;
}Depto;
a) Hacer un programa que permita introducir desde teclado la unidad y la expensa
correspondiente de cada uno de los departamentos para lo cual deberá definir un arreglo
de tipo Depto.
b) Hacer un función que calcule y retorne el valor total de las expensas del edificio.*/

typedef struct {
	char unidad[3];
	float expensas;
} Depto;


void asignarDepto(Depto *c)
{
	printf("\ningrese unidad: ");
	scanf("%s", &c->unidad);
	
	printf("ingrese Expensas: ");
	scanf("%f", &c->expensas);	     
}

void mostrarDepto(Depto * c)
{
	printf("UNIDAD: %s, EXPENSAS: %f\n",c->unidad,c->expensas);
}

float calcularTotalExpensas(Depto c[]){
	int i;
	float acum=0;

	for(i = 0; i < 4; i++) {
		acum = acum + c[i].expensas;
	}
	
	return acum;
}

int main(int argc, char *argv[]) {
	Depto departamentos[4];
	int i; 
	float totalExpensas=0;

	for (i = 0; i < 2; i++)
	{
		asignarDepto(&departamentos[i]);
		mostrarDepto(&departamentos[i]);
	}
	
	totalExpensas = calcularTotalExpensas(departamentos);
	
	printf("\nEl valor total de las expensas es: %f\n", totalExpensas);
}

