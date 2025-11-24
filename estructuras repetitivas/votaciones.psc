Algoritmo votaciones_2024
    Definir voto, uno, dos, tres, blanco, i Como Entero
	
    uno <- 0
    dos <- 0
    tres <- 0
    blanco <- 0
	//cerrar votaciones 
	clave <- 1234
	
    Para i <- 1 Hasta 50 Hacer
        Escribir "VOTANTE #", i
        Escribir "MENU ELECCIONES 2024"
        Escribir "1. Candidato Uno"
        Escribir "2. Candidato Dos"
        Escribir "3. Candidato Tres"
        Escribir "4. Voto en Blanco"
        Leer voto
		
        // Validación
        Mientras voto < 1 O voto > 4 Hacer
            Escribir "Opción inválida. Digite nuevamente:"
            Leer voto
        FinMientras
		
        Segun voto Hacer
            1: uno <- uno + 1
            2: dos <- dos + 1
            3: tres <- tres + 1
            4: blanco <- blanco + 1
        FinSegun
		
        Limpiar Pantalla
    FinPara
	
    // Resultados
    Escribir "RESULTADOS FINALES:"
    Escribir "Candidato Uno: ", uno
    Escribir "Candidato Dos: ", dos
    Escribir "Candidato Tres: ", tres
    Escribir "Votos en Blanco: ", blanco
	
FinAlgoritmo
