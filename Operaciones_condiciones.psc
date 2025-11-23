Algoritmo Operaciones_condiciones
	definir num1,num2,suma,diferencia,producto,division como real 
	
	Escribir "ingrese numero 1"
	leer num1
	Escribir "ingrese numero 2"
	leer num2
	
	si num1 > num2 Entonces
		suma=num1 + num2
		diferencia=num1-num2
		Escribir "la suma es:", suma 
		Escribir "la diferencia es:", diferencia
	sino 
		producto= num1 * num2  
		
	    si num2 = 0 Entonces
			Escribir "no se puede dividir entre cero"
	    SiNo
			division = num1 / num2 
			Escribir "el producto es:", producto
		    Escribir "la division es:", division 
	     FinSi
	
FinSi

	
	
FinAlgoritmo
