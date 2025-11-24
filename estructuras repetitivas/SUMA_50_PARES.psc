Algoritmo SUMA_50_PARES
    Definir i, numero_par, suma Como Entero
    
    suma = 0
    
    Para i <- 1 Hasta 50 Hacer
        numero_par = i * 2
        suma = suma + numero_par
    FinPara
    
    Escribir "La suma de los primeros 50 números pares es: ", suma
FinAlgoritmo
