Algoritmo Matriz_par_impar
	Definir M, N, i, j Como Entero
	Definir matriz_numeros Como Entero
	Definir resultado_par_impar Como Caracter
	
	Escribir "--- GENERADOR Y ANALIZADOR DE MATRIZ M x N ---"
	Escribir "Ingrese el numero de filas (M):" Sin Saltar
	Leer M
	Escribir "Ingrese el numero de columnas (N):" Sin Saltar
	leer N
	
	// Dimensionar los arreglos
    Dimension matriz_numeros[M, N]
	Dimension resultado_par_impar[M, N]
	
	// --- 2. GENERACIÓN DE NÚMEROS ALEATORIOS ---
	Escribir ""
	Escribir "Generando matriz ", M, "x", N, " con números aleatorios..."
	
	Para i <-0 Hasta M - 1  Hacer
		para j = 0 Hasta N -1 Hacer
			matriz_numeros[i,j] = Aleatorio(1,50)
		FinPara
		
	Fin Para
	
	Para i = 0 Hasta M - 1 Hacer
        Para j = 0 Hasta N - 1 Hacer
            Si matriz_numeros[i, j] % 2 = 0 Entonces
                resultado_par_impar[i,j] = "par"
            Sino
                resultado_par_impar[i, j] = "Iimpar"
            FinSi
        FinPara
    FinPara
	
	Escribir "===== MATRIZ  ====="
    Para i = 0 Hasta M - 1 Hacer
        Para j = 0 Hasta N - 1 Hacer
            Escribir Sin Saltar matriz_numeros[i, j], "   "
        FinPara
        Escribir ""
    FinPara
	
    Escribir ""
    Escribir "===== MATRIZ PAR/IMPAR ====="
    Para i = 0 Hasta M - 1 Hacer
        Para j = 0 Hasta N - 1 Hacer
            Escribir Sin Saltar resultado_par_impar[i, j], "   "
        FinPara
        Escribir ""
    FinPara
	
	
	
	
	
	
	
FinAlgoritmo