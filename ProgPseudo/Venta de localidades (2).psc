Algoritmo sin_titulo
	
	//primi dubraska
	Escribir "Venta de Localidades"
	Escribir "---------------------- "
	
	Definir ventaDeLocalidades como caracter
	total=0
	totalZonaUno=0
	CantidadTotalZonaUno= 0
	
	totalZonaDos=0
	CantidadTotalZonaDos= 0
	
	//cuando se ingresa el 3 se sale del ciclo
	Mientras ventaDeLocalidades <> '3'  Hacer
		
		Escribir "1 -Zona 1 -$800"
		Escribir "2 -Zona 2 -$700"
		Escribir "3 -Salir"
		Leer ventaDeLocalidades
		
		//valida que el usuario ingrese la opcion correcta
		Mientras ventaDeLocalidades <> '1' && ventaDeLocalidades <> '2' && ventaDeLocalidades <> '3' Hacer
			Escribir "Ingrese una opcion correcta"
			Escribir "1 -Zona 1 -$800"
			Escribir "2 -Zona 2 -$700"
			Escribir "3 -Salir"
			Leer ventaDeLocalidades
		Fin Mientras
		
		//valida que al ingresar 0 no se continue preguntando 
		Si codigoVendedor <> '0' Entonces
			
			//cuando se ingresa la opcion 1
			Si ventaDeLocalidades = '1' Entonces
				Escribir "Ingrese cantidad de entradas a comprar: "
				leer entradasZonaUno 
				
				Si entradasZonaUno > 0 entonces
					//calcula el importe de entradas vendidas en la zona 1
					total=(entradasZonaUno * 800)
					CantidadTotalZonaUno<-CantidadTotalZonaUno+total
					Escribir "total entradas vendidas: ",CantidadTotalZonaUno + CantidadTotalZonaDos
					
				SiNo 
					Escribir "Ingrese cantidad de entradas mayor a cero: "
					leer entradasZonaUno
				Fin Si
				
				Escribir "Importe total entradas vendidas: ", total
				Escribir ""
			Fin Si
			
			//cuando se ingresa la opcion 2
			Si ventaDeLocalidades = '2' Entonces
				Escribir "Ingrese el tipo de persona"
				Escribir "1. Jubilados 20% "
				Escribir "2. Estudiantes 10% "
				leer tipoDeEntrada 
				
				//valida que el usuario ingrese la opcion correcta
				Mientras tipoDeEntrada <> '1' && tipoDeEntrada <> '2' Hacer
					Escribir "Ingrese el tipo de persona"
					Escribir "1. Jubilados 20% "
					Escribir "2. Estudiantes 10% "
					leer tipoDeEntrada 
				Fin Mientras
				
				//jubilados
				si tipoDeEntrada= '1' Entonces
					entradasZonaDos = 0
					
					Mientras entradasZonaDos <>1 Hacer
						Escribir "Ingrese cantidad de entradas a comprar: "
						leer entradasZonaDos
						
						//calculo de entradas vendidas
						Si entradasZonaDos=1 Entonces
							precioJubiladoConDescuento= 700*0.8
							CantidadTotalZonaDos<-CantidadTotalZonaDos+precioJubiladoConDescuento
							Escribir "total entradas vendidas: ",CantidadTotalZonaUno + CantidadTotalZonaDos
						SiNo
							Escribir "Solo se le puede aplicar el descuento a 1 entrada"
							Escribir ""
						Fin Si
					Fin Mientras
				FinSi
				
				//alumnos
				si tipoDeEntrada= '2' Entonces
					entradasZonaDos = 0
					Mientras entradasZonaDos <>1 Hacer
						Escribir "Ingrese cantidad de entradas a comprar: "
						leer entradasZonaDos
						
						//calcuulo de entradas
						Si entradasZonaDos=1 Entonces
							precioEstudianteConDescuento= 700*0.9
							CantidadTotalZonaDos<-CantidadTotalZonaDos+precioEstudianteConDescuento
							Escribir "total entradas vendidas: ",CantidadTotalZonaUno + CantidadTotalZonaDos
							
						SiNo
							Escribir "Solo se le puede aplicar el descuento a 1 entrada"
							Escribir ""
						Fin Si
					Fin Mientras
				FinSi
				
				total=precioJubiladoConDescuento + precioEstudianteConDescuento + totalZonaDos
				totalZonaDos=totalZonaDos+total
			Fin Si
			//recaudacion total del estadio
			recaudacionTotalEstadio = CantidadTotalZonaUno+CantidadTotalZonaDos
			
		FinSi
		
	Fin Mientras
	
	//muestra en pantalla
	Escribir "Cantidad entradas vendidas zona 1: ", CantidadTotalZonaUno
	Escribir "Cantidad entradas vendidas zona 2: ", CantidadTotalZonaDos
	Escribir "Recaudacion total de estadio: ", recaudacionTotalEstadio
	
	//valida quien recaudo mas
	Si CantidadTotalZonaUno > CantidadTotalZonaDosEntonces
		Escribir "La zona 1 tuvo mas recaudaciones"
	SiNo
		Escribir "La zona 2 tuvo mas recaudaciones"
	Fin Si
	

FinAlgoritmo
