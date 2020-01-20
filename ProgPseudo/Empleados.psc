//DUBRASKA PRIMI 
Algoritmo tp_dubraskaprimi
	
	Escribir "BIENVENIDOS"
	Escribir "Ingresar los datos de los empleados: "
	
	//variables definidas
	Definir decision como cadena
	decision = 's'
	Definir totalEmpleados como entero
	Definir edadesAcum como entero
	Definir mayorAntiguedad como entero 
	mayorAntiguedad = 0
	Definir mayorAntiguedadNombre como cadena 
	Definir bodasDePlata como cadena
	
	// ciclo para obtener la informacion de todos los empleados
	Mientras (decision = 's') Hacer
		//Nombre del empleado
		Escribir ""
		Escribir "Ingresar nombre: "
		Leer nombreEmpleado
		
		//Antiguedad del empleado contolando que sea menor a 50
		Escribir "Ingresar Antiguedad: "
		Leer antiguedadEmpleado
		
		Mientras antiguedadEmpleado >= 50 Hacer
			Escribir "La antiguedad permitida es menor a 50 años"
			Escribir "Ingresar Antiguedad: "
			Leer antiguedadEmpleado
			
		Fin Mientras
		
		//valida el empleado con mayor edad y su nombre
		Si antiguedadEmpleado > mayorAntiguedad Entonces
			mayorAntiguedad = antiguedadEmpleado
			mayorAntiguedadNombre = nombreEmpleado
			
		Fin Si
		
		//valida que el empleado tenga bodas de plata 
		si antiguedadEmpleado = 25 Entonces
			bodasDePlata = nombreEmpleado
		FinSi
		
		//Sexo del empleado 
		Escribir "Ingresar sexo: "
		Escribir "1 para mujer"
		Escribir "2 para hombre"
		Leer sexoEmpleado
		
		//valida que el usuario ingrese la opcion correcta
		Mientras sexoEmpleado <>'1' && sexoEmpleado <>'2'  Hacer
			Escribir "Ingrese una opcion correcta"
			Escribir "Ingresar sexo: "
			Leer sexoEmpleado
			
		Fin Mientras
		
		//contola que 1 sea mujer y 2 sea hombre
		Si sexoEmpleado = '1' entonces
			totalEmpleadosMujeres<-totalEmpleadosMujeres+1;
		fin si	
		
		si sexoEmpleado = '2' entonces
			totalEmpleadosHombres<-totalEmpleadosHombres+1;		
		FinSi
		
		//cuenta la cantidad de empleados en la empresa 
		totalEmpleados<-totalEmpleadosHombres + totalEmpleadosMujeres
		
		//antiguedad promedio de los empleados de la empresa 
		edadesAcum<-edadesAcum + antiguedadEmpleado 
		
		//porcentaje de mujeres y hombres 
		totalPorcentaje = totalEmpleadosHombres + totalEmpleadosMujeres
		
		Escribir "¿Desea continuar? (s/n): "
		Leer decision
	Fin Mientras
	
	//variable que contiene el valor del promedio de los empleados
	TotalAntiguedad = edadesAcum / totalEmpleados
	
	//variable que contiene el porcentaje de hombres y mujeres
	porcentajeHombres = totalEmpleadosHombres*100/totalPorcentaje
	porcentajeMujeres = totalEmpleadosMujeres*100/totalPorcentaje
	
	//Imprimir resultados
	Escribir ""
	Escribir "*Cantidad Total de empleados: ", totalEmpleados 
	Escribir "*Antiguedad promedio: ", TotalAntiguedad " años"
	Escribir "*Empleado con mayor antiguedad: ",mayorAntiguedadNombre " con ",mayorAntiguedad " años"
	Escribir "*En la empresa hay: ", totalEmpleadosMujeres " mujeres y ", totalEmpleadosHombres " hombres"
	Escribir "*Porcentaje: ", porcentajeMujeres "% mujeres y ", porcentajeHombres "% hombres"
	
	//valida que imprima las bodas de plata 
	si bodasDePlata <> '' entonces
		Escribir "*Organizar bodas de plata para: ", bodasDePlata
	finsi 
	
FinAlgoritmo

