Algoritmo CONTADOR_VOCALES
	
    Definir cadena Como Cadena
    Definir i, tam, contador Como Entero
    Definir caracter Como Cadena
	
    contador <- 0
	
    Escribir "Ingrese una cadena de texto: "
    Leer cadena
	
	tam = Longitud(cadena)
	
    Para i <- 1 Hasta tam Hacer
		
        caracter <- Subcadena(cadena, i, i)    // Obtengo cada letra
        caracter <- Minusculas(caracter)       // Convertir a minúscula (si tu PSeInt lo permite)
		
        Si caracter = "a" O caracter = "e" O caracter = "i" O caracter = "o" O caracter = "u" Entonces
            contador <- contador + 1
        FinSi
		
    FinPara
	
    Escribir "La cantidad de vocales es: ", contador
	
FinAlgoritmo
