Algoritmo diferencia_tres_numeros 
	Definir num1,num2,num3,mayor,menor Como Entero
	
	Escribir "ingrese valor del numero 1"
	leer num1
	Escribir "ingrese valor del numero 2"
	leer num2
	Escribir "ingrese valor del numero 3"
	leer num3
	
	mayor=num1
	menor=num1
	
	si num2 > mayor Entonces
		mayor = num2
	FinSi
	si num3 > mayor Entonces
		mayor = num3 
	FinSi
	si num2 < menor Entonces
		 menor = num2
	FinSi
	si num3 < menor Entonces
		menor = num3
	FinSi
	
	Escribir "el numero mayor es:",mayor
	Escribir "el numero menor es:",menor
FinAlgoritmo
