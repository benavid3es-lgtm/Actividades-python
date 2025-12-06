Algoritmo Temperaturas_Popayan
	
	Definir i, j, opcion, fila_consulta Como Entero
	Definir max_temp, suma_maximas, promedio_maximas,temperaturas Como Real 
	Definir dia_mayor_temp, nombre_dia_consulta,dias Como Caracter
	Dimension TEMPERATURAS[7, 2] 
	
	
	Dimension DIAS[7]
	DIAS[0] ="Lunes"
	DIAS[1] = "Martes"
	DIAS[2] = "Miércoles"
	DIAS[3] = "Jueves"
	DIAS[4] = "Viernes"
	DIAS[5] = "Sábado"
	DIAS[6] ="Domingo"
	
	Limpiar Pantalla
	Escribir "--- REGISTRO DE TEMPERATURAS SEMANALES (POPAYÁN) ---"
	
	Escribir "Por favor, ingrese las temperaturas Mínima y Máxima para cada día."
	
	Para i <- 0 Hasta 6 Con Paso 1 Hacer
		Escribir "---------------------------------------------------"
		Escribir "Día: ", DIAS[i]
		
		Repetir
			Escribir "Ingrese Temperatura MÍNIMA (C):" Sin Saltar
			Leer TEMPERATURAS[i, 0]
		Hasta Que TEMPERATURAS[i, 0] > -50 
		
		Repetir
			Escribir "Ingrese Temperatura MÁXIMA (C):" Sin Saltar
			Leer TEMPERATURAS[i, 1]
		Hasta Que TEMPERATURAS[i, 1] >= TEMPERATURAS[i, 0] 
	FinPara
	
	Repetir 
		Escribir "___________________________________________"  
		Escribir "           MENÚ DE CONSULTAS               "
		Escribir "1. Consultar el día con la MAYOR temperatura MÁXIMA."
		Escribir "2. Consultar temperaturas (Mínima y Máxima) para un día específico."
		Escribir "3. Calcular el PROMEDIO de las temperaturas máximas de la semana." 
		Escribir "4. Salir"
		Escribir "Ingrese su opción:" Sin Saltar
		
		Leer opcion
		Limpiar Pantalla
		
		Segun opcion Hacer
			
			1:
				Escribir "--- CONSULTA: MAYOR TEMPERATURA MÁXIMA ---"
				max_temp <- -9999 
				dia_mayor_temp <- ""
				
				Para i <- 0 Hasta 6 Con Paso 1 Hacer
					Si TEMPERATURAS[i, 1] > max_temp Entonces
						max_temp <- TEMPERATURAS[i, 1]
						dia_mayor_temp <- DIAS[i] 
					FinSi
				FinPara
				Escribir ""
				Escribir "El día ", dia_mayor_temp, " la temperatura máxima fue de ", max_temp, " grados."
				Escribir ""
				2:
				Escribir "--- CONSULTA: TEMPERATURA POR DÍA ---"
				Escribir "Ingrese el número del día que desea consultar:"
				Para i <- 0 Hasta 6 Con Paso 1 Hacer
					Escribir i + 1, ". ", DIAS[i]
				FinPara
				Escribir "Seleccione el día (1 a 7):" Sin Saltar
				
				
					Repetir 
						Si i >= 0 & i <= 6 Entonces
							leer fila_consulta
							Escribir "INVALIDA: Debe ingresar un número entre 1 y 7. Intente de nuevo:" Sin Saltar
						FinSi
				     Hasta Que (fila_consulta >= 1) & (fila_consulta <= 7)
				
				
				i <- fila_consulta - 1 
				
				Escribir "--------------------------------------------"
				Escribir "RESULTADO PARA EL DÍA: ", DIAS[i]
				Escribir "Temperatura MÍNIMA: ", TEMPERATURAS[i, 0], " grados."
				Escribir "Temperatura MÁXIMA: ", TEMPERATURAS[i, 1], " grados."
				Escribir "--------------------------------------------"
				
			3:
				Escribir "--- CONSULTA: PROMEDIO DE TEMPERATURAS MÁXIMAS ---"
				suma_maximas <- 0
				
				Para i <- 0 Hasta 6 Con Paso 1 Hacer
					suma_maximas <- suma_maximas + TEMPERATURAS[i, 1]
				FinPara
				
				
				promedio_maximas <- suma_maximas / 7
				
				Escribir "--------------------------------------------"
				Escribir "Suma Total de Máximas: ", suma_maximas, " grados."
				Escribir "Temperatura Máxima PROMEDIO de la semana: ", promedio_maximas, " grados."
				Escribir "--------------------------------------------"
				
				
				Escribir "Saliendo del algoritmo. ¡Hasta pronto!"
				
			De Otro Modo:
				Escribir " Opción inválida. Intente de nuevo."
				
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo