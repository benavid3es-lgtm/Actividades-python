Algoritmo suma_pares_y_impares
	//Definir varaibles y arreglos
	Dimension numeros[10]
	Definir numeros, i Como Entero
	Definir sumaPares, sumaImpares, contPares, contImpares Como Entero
	Definir sumaPosPares, sumaPosImpares Como Entero
	Definir promedioPares, promedioImpares Como Real
	
	sumaPares = 0
	sumaImpares = 0
	contPares = 0
	contImpares = 0
	sumaPosPares = 0
	sumaPosImpares = 0
	
	Limpiar Pantalla
	Escribir "--- 10 NÚMEROS ENTEROS ---"
	
	Para i = 0 Hasta 9 Hacer
		
		numeros[i] = Aleatorio(1, 100)
		Escribir "Numero ", i+1, ": ", numeros[i]
		Si numeros[i] mod 2 = 0 Entonces
			sumaPares = sumaPares + numeros[i]
			contPares = contPares + 1
		SiNo
			sumaImpares = sumaImpares + numeros[i]
			contImpares = contImpares + 1
		FinSi
		Si i mod 2 = 0 Entonces
			sumaPosPares = sumaPosPares + numeros[i]
		SiNo
			sumaPosImpares = sumaPosImpares + numeros[i]
		FinSi
	FinPara
	Si contPares > 0 Entonces
		promedioPares = sumaPares / contPares
	SiNo
		promedioPares = 0
	FinSi
	
	Si contImpares > 0 Entonces
		promedioImpares = sumaImpares / contImpares
	SiNo
		promedioImpares = 0
	FinSi
	
	// Mostrar resultados
	Limpiar Pantalla
	Escribir "========== RESULTADOS =========="
	Escribir "Promedio de numeros PARES: ", promedioPares
	Escribir "Promedio de numeros IMPARES: ", promedioImpares
	Escribir ""
	Escribir "Suma de numeros en posiciones PARES: ", sumaPosPares
	Escribir "Suma de numeros en posiciones IMPARES: ", sumaPosImpares
FinAlgoritmo
	
	

