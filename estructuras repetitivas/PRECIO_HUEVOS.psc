Algoritmo PRECIO_HUEVOS
    Definir n, i Como Entero
    Definir peso, altura, huevos, calidad, suma_calidad, promedio, precio Como Real
    
    suma_calidad = 0
    
    Escribir "Ingrese el número de gallinas:"
    Leer n
    
    Para i <- 1 Hasta n Hacer
        Escribir "Gallina ", i
        
        Escribir "Ingrese el peso:"
        Leer peso
        
        Escribir "Ingrese la altura:"
        Leer altura
        
        Escribir "Ingrese el número de huevos que pone:"
        Leer huevos
        
        calidad = (peso * altura) / huevos
        suma_calidad = suma_calidad + calidad
    FinPara
    
    promedio = suma_calidad / n
    
    Si promedio >= 15 Entonces
        precio = 1.2 * promedio
    Sino
        Si promedio > 8 Entonces
            precio = 1.0 * promedio
        Sino
            precio = 0.80 * promedio
        FinSi
    FinSi
    
    Escribir "El promedio de calidad es: ", promedio
    Escribir "El precio sugerido por kilo de huevo es: $", precio
    
FinAlgoritmo
