Algoritmo Dijitos_numeros_enteros 
	Definir nuemro,decena,unidad Como Entero
	Escribir "ingresa un numero entero de dos digitos"
	leer numero 
	
	decena <- Trunc(numero / 10)
    unidad <- numero MOD 10
	Escribir "La decena es: ", decena
    Escribir "La unidad es: ", unidad

	
FinAlgoritmo
