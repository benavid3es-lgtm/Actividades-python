Algoritmo leer_numero_tres_digitos 
	definir num,centena,decena,unidad Como Entero
	
	Escribir "ingrese numero entero positivo de tres digitos "
	leer num
	
	Si num <= 0 Entonces
        Escribir "ERROR: el número debe ser positivo."
    Sino
        Si num < 100 O num > 999 Entonces
            Escribir "ERROR: el número debe tener exactamente 3 dígitos."
		SiNo
			centena = trunc(num / 100)
			decena = trunc((num % 100) / 10)
			unidad = num % 10
			
            Si centena = unidad Entonces
                Escribir "El número ", num, " es igual al derecho y al revés (es capicúa)."
            Sino
                Escribir "El número ", num, " NO es igual al derecho y al revés."
            FinSi
        FinSi
    FinSi
	
FinAlgoritmo
