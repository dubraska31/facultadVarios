Algoritmo Fabrica_DE_Cajas
	
	//Vectores
	dimension cajas[3]
	cajas[1] = "carton"
	cajas[2] = "plastico"
	cajas[3] = "ceramica"
	
	dimension pre[3]
	dimension tot[3]
	dimension rec[3] 

	
	
	//Variables
	decision = 's'
	
	//--------------------------------------------------------------------------------------------------------
	
	//Se ingresa y asigna el precio de cada material al vector pre
	Escribir "Ingrese precio de carton: "
	leer cartonPre
	pre[1] <-cartonPre
	
	Escribir "Ingrese precio de plastico: "
	leer pasticoPre
	pre[2] <-pasticoPre
	
	Escribir "Ingrese precio de madera: "
	leer maderaPre
	pre[3] <-maderaPre
	Escribir ""
	
	//Valida mientas la condicion se cumpla
	Mientras decision = 's' Hacer
		
		Escribir "Ingrese tipo de caja: "
		Escribir "1 ->Carton"
		Escribir "2 ->Plastico"
		Escribir "3 ->Madera"
		Leer tipoDecaja
		
		//valida que el usuario ingrese la opcon correcta
		Si tipoDecaja <> 1 && tipoDecaja <> 2 && tipoDecaja <> 3 Entonces
			Escribir "Ingrese una opcion correcta"
		Fin Si
		
		//Ingreso de cantidad exportada
		Escribir "Ingrese cantidad exportada: "
		leer cantidadExportada
		
		//Guarda en el vector Tot la cantidad de cajas exportadas por cada tipo de caja  
		Si tipoDecaja = 1 Entonces
			tot[1] = tot[1] + cantidadExportada
		SiNo
			Si tipoDecaja = 2 Entonces
				tot[2] = tot[2] + cantidadExportada
			SiNo
				Si tipoDecaja = 3 Entonces
					tot[3] = tot[3] + cantidadExportada
				SiNo
					Escribir "Ingrese una opcion correcta"
				Fin Si
			Fin Si
		Fin Si
		
		Escribir "desea continuar? (s/n)"
		leer decision 
	Fin Mientras
	
	//1. Muestra la cantidad de cajas exportadas
	Escribir ""
	Escribir "Cantidad de cajas exportadas de carton: ", tot[1]
	Escribir "Cantidad de cajas exportadas de plastico: ", tot[2]
	Escribir "Cantidad de cajas exportadas de madera: ", tot[3]
	Escribir ""
	
	//2. Total recaudado por cada tipo de caja 
	rec[1] <-tot[1] * pre[1] //cartonPre
	rec[2] <-tot[2] * pre[2] //pasticopre
	rec[3] <-tot[3] * pre[3] //maderaPre
	
	Escribir "Total recaudado carton: ", rec[1]
	Escribir "Total recaudado plastico: ", rec[2]
	Escribir "Total recaudado madera: ", rec[3]
	Escribir ""
	
	//3. Mostrar tipos de cajas más exportadas, junto con su descripción	
	Si tot[1] > tot[2] && tot[1] > tot[3] Entonces 
		Escribir "Tipo de caja mas exportada: Carton, ", tot[1] " exportaciones"
	SiNo
		si tot[2] > tot[3] entonces 
			Escribir "Tipo de caja mas exportada: Plastico, ", tot[2] " exportaciones"		
		sino 
			Escribir "Tipo de caja mas exportada: Madera, ", tot[3] " exportaciones"
		FinSi		
	FinSi
	
	//4. Mostrar descripción y cantidad recaudada por cada tipo de caja ordenando de mayor a menor. 
	
	Definir i, NumIn, minimo, aux como entero;
	NumIn = 3
	
	para i <- 1 hasta NumIn con paso 1 Hacer       
        minimo <- i;       
        Para j<-i+1 Hasta NumIn Con Paso 1 Hacer           
            Si rec[j] > rec[minimo] Entonces    //con < ordena ascendente, con > ordena descendente
                minimo <- j;
            Fin Si           
        Fin Para       
        aux <- rec[i];
        rec[i] <- rec[minimo];
        rec[minimo] <- aux;       
    FinPara
	
	Para i<-1 hasta 3 Hacer
		Escribir "descricion ",i," es: ",rec[i];
	FinPara
	
FinAlgoritmo
