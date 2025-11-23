Algoritmo incentivos_operario
    Definir nombre Como Cadena
    Definir l, m, mi, j, v, s, total, promedio Como Real
	
    Escribir "Ingrese el nombre del operario:"
    Leer nombre
	
    Escribir "Ingrese producción del día Lunes:"
    Leer l
    Escribir "Ingrese producción del día Martes:"
    Leer m
    Escribir "Ingrese producción del día Miércoles:"
    Leer mi
    Escribir "Ingrese producción del día Jueves:"
    Leer j
    Escribir "Ingrese producción del día Viernes:"
    Leer v
    Escribir "Ingrese producción del día Sábado:"
    Leer s
	
    total = l + m + mi + j + v + s
    promedio = total / 6
	
    Escribir "El operario ", nombre, " durante la semana su producción fue de ", total, " unidades."
	
    Si promedio >= 100 Entonces
        Escribir "y tiene derecho a recibir incentivos."
    SiNo
        Escribir "y NO tiene derecho a recibir incentivos."
		FinSi
FinAlgoritmo
