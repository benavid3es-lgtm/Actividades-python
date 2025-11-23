Algoritmo mes_y_ano_nacimiento
		
		Definir mes, ano, dias Como Entero
		Definir bisiesto Como Logico
		
		Escribir "Ingrese su mes de nacimiento (1-12):"
		Leer mes
		
		Escribir "Ingrese su año de nacimiento:"
		Leer ano
		
		// Determinar si el año es bisiesto
		Si (año % 4 = 0 Y año % 100 <> 0) O (año % 400 = 0) Entonces
			bisiesto = Verdadero
		SiNo
			bisiesto = Falso
		FinSi
		
		Segun mes Hacer
			1: dias = 31
			2:
				Si bisiesto Entonces
					dias = 29
				SiNo
					dias = 28
				FinSi
			3: dias = 31
			4: dias = 30
			5: dias = 31
			6: dias = 30
			7: dias = 31
			8: dias = 31
			9: dias = 30
			10: dias = 31
			11: dias = 30
			12: dias = 31
			De Otro Modo:
				Escribir "Mes inválido."
		FinSegun

// Mostrar resultados
       Si bisiesto Entonces
	   Escribir "El año ", ano, " era bisiesto."
        SiNo
	Escribir "El año ", ano, " no era bisiesto."
     FinSi

    Escribir "El mes ", mes, " tiene ", dias, " días."

FinAlgoritmo
