Algoritmo suma_pares_impares
	
    Definir num, suma_pares, suma_impares Como Entero
	
    suma_pares <- 0
    suma_impares <- 0
	
    Escribir "Ingrese un número (0 para terminar):"
    Leer num
	
    Mientras num <> 0 Hacer
		
        Si num % 2 = 0 Entonces
            suma_pares <- suma_pares + num
        SiNo
            suma_impares <- suma_impares + num
        FinSi
		
        Escribir "Ingrese otro número (0 para terminar):"
        Leer num
		
    FinMientras
	
    Escribir "La suma de los números pares es: ", suma_pares
    Escribir "La suma de los números impares es: ", suma_impares
	
FinAlgoritmo
