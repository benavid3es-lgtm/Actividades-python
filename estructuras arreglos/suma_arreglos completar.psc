Algoritmo suma_arreglos
	dimension arreglo1[5]
    dimension arreglo2[5]
	dimension resultado[5]
	
	definir resultado, arreglo1, arreglo2 Como Entero
	definir i Como entero
	
	Limpiar Pantalla
	Escribir " ingrese los 5 numeros del arreglo 1"
	
	Para i <- 0 Hasta 4 Con Paso 1 hacer
		Escribir "Valor de la posicion [",i,"] del arreglo1:" Sin Saltar
		Leer arreglo1[i]
		
	FinPara
	
	Escribir ""
	
	Escribir "ingrese los 5 numeros del arreglo 2 "
		para i <- 0 Hasta 4 Con Paso 1 hacer 
		Escribir " el valor de la posicion de [",i,"] del arreglo2," sin saltar 
			leer arreglo2[i]
		FinPara
		
		para i <- 0 hasta 4 Con Paso 1 hacer 
			resultado[i]<-arreglo1[i]+arreglo2[i]
		FinPara
		
		Escribir ""
		Escribir "arreglo1,arreglo2, resultado:"
		Escribir ""
		
		para i <- 0 Hasta 4 con paso 1 Hacer
			Escribir " ", i, " | ", arreglo1[i], " | ", arreglo2[i], " | ", resultado[i]
		FinPara
		
		
		
		
	
FinAlgoritmo
