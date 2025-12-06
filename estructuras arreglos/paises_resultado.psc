Algoritmo paises_resultado
	dimension arregloPais[5]
	dimension arregloLetra[5]
	
	definir arreglo1,arreglo2 Como entero 
	definir arregloPais Como caracter
	definir arregloLetra,i Como entero
	
	Limpiar Pantalla
	
	Escribir " numero de letras por nombre de pais"
	escribir ""
	Escribir "nombre 5 paises "
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingrese país, [",i,"]:" Sin Saltar
        Leer ArregloPais[i]
		arregloLetra[i]= Longitud(arregloPais[i])
	FinPara
		
		Escribir ""
		Escribir "pais ingresado------ cantidad de letras "
		escribir ""
		
			escribir ""
		
			para i <- 0 Hasta 4 con paso 1 Hacer
				Escribir " ", i, "    | ", ArregloPais[i], " | ", arregloLetra[i]
			FinPara
			
			
				


	
FinAlgoritmo
