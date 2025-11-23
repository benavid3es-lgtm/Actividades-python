Algoritmo evaluacion_materia
    Definir nota Como Real
	
    Escribir "Ingrese la nota obtenida (0 a 10): "
    Leer nota
	
    Si nota >= 9.5 Entonces
        Escribir "La evaluación cualitativa es: EXCELENTE"
    Sino
        Si nota >= 7 Entonces
            Escribir "La evaluación cualitativa es: BUENO"
        Sino
            Si nota >= 5 Entonces
                Escribir "La evaluación cualitativa es: REGULAR"
            Sino
                Escribir "La evaluación cualitativa es: DEFICIENTE"
            FinSi
        FinSi
    FinSi
	
	FinAlgoritmo
