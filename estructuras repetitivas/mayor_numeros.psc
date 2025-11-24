Algoritmo mayor_numeros
	
	Definir n, contador, numero, mayor Como Entero
	
	Escribir "¿Cuántos números va a ingresar?"
	Leer n
	
	contador <- 1
	mayor <- -999999  
	
	Mientras contador <= n Hacer
		
		Escribir "Ingrese un número: "
		Leer numero
		
		Si numero > mayor Entonces
			mayor <- numero
		FinSi
		
		contador <- contador + 1
		
	FinMientras
	
	Escribir "El número mayor es: ", mayor
	
FinAlgoritmo
