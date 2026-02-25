Algoritmo Hombres_Mujeres
    Definir hombres, mujeres, total Como Entero
    Definir porcentajeH, porcentajeM Como Real
	
    Escribir "Ingrese la cantidad de hombres:"
    Leer hombres
    Escribir "Ingrese la cantidad de mujeres:"
    Leer mujeres
	
    total = hombres + mujeres
    porcentajeH = (hombres * 100) / total
    porcentajeM = (mujeres * 100) / total
	
    Escribir "El porcentaje de hombres es: ", porcentajeH, "%"
    Escribir "El porcentaje de mujeres es: ", porcentajeM, "%"
	
FinAlgoritmo
