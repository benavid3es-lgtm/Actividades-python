Algoritmo clasificar_edades
	
    Definir edad, ninos, jovenes, adultos, ancianos Como Entero
	
    ninos <- 0
    jovenes <- 0
    adultos <- 0
    ancianos <- 0
	
    Para i <- 1 Hasta 10 Hacer
		
        Escribir "Ingrese la edad de la persona ", i, ": "
        Leer edad
		
        Si edad < 15 Entonces
            ninos <- ninos + 1
        Sino
            Si edad >= 15 Y edad < 18 Entonces
                jovenes <- jovenes + 1
            Sino
                Si edad >= 18 Y edad < 70 Entonces
                    adultos <- adultos + 1
                Sino
                    Si edad >= 70 Entonces
                        ancianos <- ancianos + 1
                    FinSi
                FinSi
            FinSi
        FinSi
		
    FinPara
	
    Escribir "Cantidad de niños: ", ninos
    Escribir "Cantidad de jóvenes: ", jovenes
    Escribir "Cantidad de adultos: ", adultos
    Escribir "Cantidad de ancianos: ", ancianos
	
FinAlgoritmo
