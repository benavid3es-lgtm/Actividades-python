Algoritmo Calificacion_Final
    Definir parcial1, parcial2, parcial3, promedioParciales, examenFinal, trabajoFinal, calificacionFinal Como Real
	
    Escribir "Ingrese la calificación del primer parcial:"
    Leer parcial1
	
    Escribir "Ingrese la calificación del segundo parcial:"
    Leer parcial2
	
    Escribir "Ingrese la calificación del tercer parcial:"
    Leer parcial3
	
    promedioParciales = (parcial1 + parcial2 + parcial3) / 3
	
    Escribir "Ingrese la calificación del examen final:"
    Leer examenFinal
	
    Escribir "Ingrese la calificación del trabajo final:"
    Leer trabajoFinal
	
    calificacionFinal = (promedioParciales * 0.55) + (examenFinal * 0.30) + (trabajoFinal * 0.15)
	
    Escribir "La calificación final en la materia de Algoritmos es: ", calificacionFinal
	
FinAlgoritmo
