Algoritmo numero_a_romano
    Definir n Como Entero
    Definir romano Como Cadena
	
    Escribir "Ingrese un número entre 1 y 10:"
    Leer n
	
    Segun n Hacer
        1: romano <- "I"
        2: romano <- "II"
        3: romano <- "III"
        4: romano <- "IV"
        5: romano <- "V"
        6: romano <- "VI"
        7: romano <- "VII"
        8: romano <- "VIII"
        9: romano <- "IX"
        10: romano <- "X"
        De Otro Modo:
            romano <- "Número fuera de rango"
    FinSegun
	
    Escribir "Número romano: ", romano
FinAlgoritmo
