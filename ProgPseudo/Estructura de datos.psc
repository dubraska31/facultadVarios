Funcion reemplazoDeJugadoresBusquedaBinaria(Sale_Nro, Entra_Nro, equipo por referencia)
	izq<-1
	der<-11
	ban<-falso
	
	Mientras (izq <= der) && (ban = falso) Hacer
		cen<-trunc((izq + der) /2)
		
		Si Sale_Nro = equipo[cen] entonces
			ban<-verdadero
		Sino 
			Si Sale_Nro > equipo[cen] entonces
				izq<-cen + 1
			Sino
				der<-cen - 1
			Fin si
		Fin si
	Fin Mientras
	
	Si (ban = verdadero) entonces
		equipo[cen] = Entra_Nro
	Finsi
Fin Funcion

Funcion reemplazoDeJugadoresBusquedaSecuencial(Sale_Nro, Entra_Nro, equipo por referencia)
	Mientras (i <= 10 && equipo[i] <> Sale_Nro) hacer
		i<-i+1
	FinMientras
	
	Si i <= 10 entonces 
		equipo[i] = Entra_Nro
	FinSi
Fin Funcion

Algoritmo Princial
	
	//1. Armar un arreglo “Argentina” con los 11 números de los jugadores argentinos
	//que ingresaron al campo de juego al inicio del partido.
	Dimension argentina[11]
	argentina[0]<-1
	argentina[1]<-2
	argentina[2]<-4
	argentina[3]<-6
	argentina[4]<-8
	argentina[5]<-9
	argentina[6]<-10
	argentina[7]<-14
	argentina[8]<-15
	argentina[9]<-16
	argentina[10]<-22
	
	//2. Armar un arreglo “Alemania” con los 11 números de los jugadores alemanes
	//que ingresaron al campo de juego al inicio del partido.
	Dimension alemania[11]
	alemania[0]<-1
	alemania[1]<-4
	alemania[2]<-5
	alemania[3]<-7
	alemania[4]<-8
	alemania[5]<-11
	alemania[6]<-13
	alemania[7]<-16
	alemania[8]<-18
	alemania[9]<-20
	alemania[10]<-23
	
	//3. Escribir un algoritmo en pseudocódigo que ordene el arreglo
	//Argentina en forma ascendente por Número de Jugador por el método Burbuja	
	Para i<-2 Hasta 11 Hacer
		Para j<-0 Hasta 11-i Hacer
			Si argentina[j]>argentina[j+1] Entonces
				aux <-argentina[j]
				argentina[j]<-argentina[j+1]
				argentina[j+1]<-aux
			Fin Si
		Fin Para
	Fin Para
	
	//4. Escribir un algoritmo en pseudocódigo que ordene el arreglo
	//Alemania en forma descendente por Número de Jugador por el método Shell.
	inter=trunc(n/2)
	Mientras interno > 0 Hacer
		Para i<-inter hasta 11 hacer
			j=i-inter 
			Mientras j>=1 Hacer
				k<-j+inter
				Si alemania[j]<-alemania[k] entonces
					j=j-i
				SiNo
					aux=alemania[j]
					alemania[j]=alemania[k]
					alemania[k]=aux
				FinSi
			FinMientras
		FinPara
		inter=trunc(inter/2)
	FinMientras
	
	//5. Escribir un algoritmo que reciba 2 parámetros: Sale_Nro y Entra_Nro.
	//Realizar una búsqueda binaria del número de jugador que sale del campo de
	//juego y reemplazarlo con el número del jugador que entra.
	reemplazoDeJugadoresBusquedaBinaria(22, 20, argentina)
	reemplazoDeJugadoresBusquedaBinaria(9, 13, argentina)
	reemplazoDeJugadoresBusquedaBinaria(8, 5, argentina)
	reemplazoDeJugadoresBusquedaBinaria(23, 9, alemania)
	reemplazoDeJugadoresBusquedaBinaria(11, 19, alemania)
	reemplazoDeJugadoresBusquedaBinaria(8, 14, alemania)
	
	//6. Escribir un algoritmo que reciba 2 parámetros: Sale_Nro y Entra_Nro.
	//Realizar una búsqueda secuencial del número de jugador que sale del campo de juego 
	//y reemplazarlo con el número del jugador que ingresa.
	reemplazoDeJugadoresBusquedaSecuencial(22, 20, argentina)
	reemplazoDeJugadoresBusquedaSecuencial(9, 13, argentina)
	reemplazoDeJugadoresBusquedaSecuencial(8, 5, argentina)
	reemplazoDeJugadoresBusquedaSecuencial(23, 9, alemania)
	reemplazoDeJugadoresBusquedaSecuencial(11, 19, alemania)
	reemplazoDeJugadoresBusquedaSecuencial(8, 14, alemania)
	
	//7. Escribir un algoritmo que muestre el arreglo Argentina con los números de los
	//	jugadores que quedaron en el campo de juego al terminar el partido.
	Escribir ""
	Escribir "Formacion Argentina al final del partido: "
	Para i<-0 Hasta 11-1 Hacer
		Escribir "Jugador: ", argentina[i]
	Fin Para
	Escribir ""
	
	//8. Escribir un algoritmo que muestre el arreglo Alemania con los números de los
	//	jugadores que quedaron en el campo de juego al terminar el partido.
	Escribir "Formacion Alemana al final del partido: "
	Para i<-0 Hasta 11-1 Hacer
		Escribir "Jugador: ", alemania[i]
	Fin Para
FinAlgoritmo
