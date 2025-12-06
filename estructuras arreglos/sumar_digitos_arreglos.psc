Algoritmo sumar_digitos_arreglos 
	dimension arregloDigitos[10]
	Dimension arreglosuma[10]
	
	definir arregloDigitos, arreglosuma, i , numero  Como Entero
	definir digito1,digito2 como entero
	
	Limpiar Pantalla
	Escribir "suma de digitos ( numero de dos digitos)"
	Escribir ""
	Escribir " ingrese 10 numeros (10 al 99)"
	
	para i <- 0 Hasta 9 con paso 1 Hacer
		
		Repetir
			Escribir "Ingrese el número [",i,"]:" Sin Saltar
			leer numero
			
			Si (numero < 10) | (numero > 99) Entonces
				Escribir "INVALIDO: El número debe ser positivo y debe ser de dos dígitos entre (10 y 99)"
			FinSi
			
			
		Hasta Que (numero >= 10) | (numero <= 99)
		ArregloDigitos[i] <- numero
		
		digito1 <- trunc(numero / 10) 
		digito2 <- numero - (digito1 * 10)
		ArregloSuma[i] <- digito1 + digito2
	FinPara
	escribir ""
	escribir " la suma de los primeros numeros 10 son:"
	Escribir ""
	Escribir "pos", "|" , "digitos", "|" ,"suma de digitos" 
	
	para i <- 0 Hasta 9 con paso 1 hacer 
		escribir " ", i, " | ", ArregloDigitos[i], " | ", ArregloSuma[i]
	FinPara
	escribir "----------------------------"	
FinAlgoritmo
