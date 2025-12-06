Algoritmo letra_vocal
	Definir letra Como Caracter
	
	Escribir "Ingrese una letra:"
	Leer letra
	letra = Minusculas(letra)
	
	Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
		
		Escribir "La letra ", letra, " es una vocal."
	SiNo
		Escribir "La letra ", letra, " NO es una vocal."
	FinSi
	
FinAlgoritmo
