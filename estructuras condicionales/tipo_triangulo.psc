Algoritmo tipo_triangulo
    Definir lado1, lado2, lado3 Como Real
	
    Escribir "Ingrese el primer lado:"
    Leer lado1
    Escribir "Ingrese el segundo lado:"
    Leer lado2
    Escribir "Ingrese el tercer lado:"
    Leer lado3
	

    Si (lado1 + lado2 > lado3) Y (lado1 + lado3 > lado2) Y (lado2 + lado3 > lado1) Entonces
		
        Si (lado1 = lado2) Y (lado2 = lado3) Entonces
            Escribir "El triángulo es Equilátero"
        Sino
            Si (lado1 = lado2) O (lado1 = lado3) O (lado2 = lado3) Entonces
                Escribir "El triángulo es Isósceles"
            Sino
                Escribir "El triángulo es Escaleno"
            FinSi
        FinSi
		
    Sino
        Escribir "Los valores ingresados NO forman un triángulo"
    FinSi
	
FinAlgoritmo
