Algoritmo Pruebas_icfes
	
    Dimension estudiante[10]
    Dimension puntajes[10]
	Definir estudiante Como Caracter
	Definir puntajes Como Entero
    Definir suma, promedio_puntajes, mayor, menor Como Real
    Definir indice_Mayor, indice_Menor, i, puntaje_leido Como Entero
	
    suma <- 0 
	
    Limpiar Pantalla
	
    Escribir "--- INGRESO DE DATOS ICFES ---"
    Escribir "Se solicitarán datos para 10 estudiantes."
    Escribir "---------------------------------------"
	
    Para i = 1 Hasta 9 Hacer
		
        Escribir "Ingrese el nombre del estudiante ", i + 1, ":"
        Leer estudiante[i]
		
        Repetir
            Escribir "Ingrese puntaje obtenido (entre 1 a 400):"
            Leer puntaje_leido
			
            Si (puntaje_leido < 1) O (puntaje_leido > 400) Entonces
                Escribir "INVALIDO: El puntaje debe estar entre 1 y 400"
            FinSi
			
        Hasta Que puntaje_leido >= 1 Y puntaje_leido <= 400
		
        puntajes[i] <- puntaje_leido
		
    FinPara
	
    // Inicialización para mayor y menor
    mayor <- puntajes[1]
    menor <- puntajes[1]
    indice_Mayor = 1
    indice_Menor = 1
	
    // Recorrer lista para obtener mayor, menor y suma
    Para i= 1 Hasta 9 Hacer
		
        Si puntajes[i] > mayor Entonces
            mayor <- puntajes[i]
            indice_Mayor <- i
        FinSi
		
        Si puntajes[i] < menor Entonces
            menor <- puntajes[i]
            indice_Menor <- i
        FinSi
		
        suma <- suma + puntajes[i]
		
    FinPara
	
    promedio_puntajes <- suma / 10
	
    Limpiar Pantalla
	
    Escribir "---------------------------------------"
    Escribir "           RESULTADOS FINALES          "
    Escribir "---------------------------------------"
    Escribir ""
	
    // MAYOR PUNTAJE
    Escribir "1. Estudiante con Mayor Puntaje:"
    Escribir "   - Nombre:  ", estudiante[indice_Mayor]
    Escribir "   - Puntaje: ", mayor
    Escribir ""
	
    // MENOR PUNTAJE
    Escribir "2. Estudiante con Menor Puntaje:"
    Escribir "   - Nombre:  ", estudiante[indice_Menor]
    Escribir "   - Puntaje: ", menor
    Escribir ""
	
    // PROMEDIO
    Escribir "3. Promedio de Puntajes del Grupo:"
    Escribir "   -> ", promedio_puntajes
    Escribir ""
	
FinAlgoritmo
