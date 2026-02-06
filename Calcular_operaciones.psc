Algoritmo Calcular_operaciones 
	definir num1,num2,suma,resta,multiplicacion,divicion Como Real
	Escribir"ingrese el primer numero entero"
	leer num1
	Escribir "ingrese el segundo numero entero"
	leer num2
	Suma=num1+num2
	resta=num1-num2
	multiplicacion=num1*num2
	Si num2 <> 0 Entonces
        division = num1 / num2
        Escribir "La división de ", num1, " entre ", num2, " es: ", division
    Sino
        Escribir "No se puede dividir entre cero."
    FinSi
	Escribir " la suma es ",suma
	Escribir "la resta es",resta 
	Escribir "la multiplicacion es ",multiplicacion 
	
FinAlgoritmo
