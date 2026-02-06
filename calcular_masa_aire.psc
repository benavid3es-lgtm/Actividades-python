Algoritmo calcular_masa_aire
	//definir variables 
    Definir presion, volumen, temperatura, masa Como Real
	
	//leer datos 
	
    Escribir "Ingrese la presión del aire:"
    Leer presion
    Escribir "Ingrese el volumen del aire:"
    Leer volumen
    Escribir "Ingrese la temperatura del aire:"
    Leer temperatura
	
	//resultados 
	
    masa <- (presion * volumen) / (0.37 * (temperatura + 460))
	
    Escribir "La masa del aire es: ", masa
FinAlgoritmo
