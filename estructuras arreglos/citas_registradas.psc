Algoritmo Citas_Medicas
	Definir MAX_CITAS Como Entero
	MAX_CITAS <- 8
	
	Definir i, opcion, pos Como Entero
	Definir cedula Como Caracter      
	Definir citas, HORAS Como Caracter 
	
	Definir existe Como Logico
	existe <- Falso
	
	Dimension citas[MAX_CITAS, 2] 
	Dimension HORAS[MAX_CITAS]   
	
	HORAS[0] <- "07:00 am"
	HORAS[1] <- "08:00 am"
	HORAS[2] <- "09:00 am"
	HORAS[3] <- "10:00 am"
	HORAS[4] <- "02:00 pm"
	HORAS[5] <- "03:00 pm"
	HORAS[6] <- "04:00 pm"
	HORAS[7] <- "05:00 pm"
	
	
	Para i <- 0 Hasta MAX_CITAS - 1 Con Paso 1 Hacer
		citas[i, 0] <- HORAS[i]      
		citas[i, 1] <- "DISPONIBLE"  
	FinPara
	
	
	
	Repetir
		Limpiar Pantalla
		Escribir "============================================="
		Escribir "        SISTEMA DE CITAS MÉDICAS (8 cupos)   "
		Escribir "============================================="
		Escribir "1. Asignar nueva Cita"
		Escribir "2. Ver Agenda Diaria"
		Escribir "3. Salir"
		Escribir "Seleccione una opción:" Sin Saltar
		
		Leer opcion
		Limpiar Pantalla
		
		Segun opcion Hacer
			
				
			1:
				Escribir "--- ASIGNACIÓN DE CITA ---"
				pos = -1
				i <- 0
				
			
				Mientras (i < MAX_CITAS) & (pos = -1) Hacer
					Si citas[i, 1] = "DISPONIBLE" Entonces
						pos <- i 
					FinSi
					i <- i + 1
				FinMientras
				
				Si pos <> -1 Entonces 
					
				
					Escribir "Cita asignada a la hora: ", citas[pos, 0]
					Escribir "Ingrese la Cédula del paciente (solo números):" Sin Saltar
					Leer cedula 
					
				
					citas[pos, 1] <- cedula 
					
					Escribir "---------------------------------------------"
					Escribir "¡Cita registrada con éxito!"
					Escribir "Hora: ", citas[pos, 0], ", Cédula: ", citas[pos, 1]
					
				SiNo
					Escribir "ATENCIÓN: La agenda está llena. No hay cupos disponibles."
				FinSi
				
				Esperar Tecla
				
			2:
				Escribir" -------------------------------------"
				Escribir "     AGENDA DIARIA DEL MÉDICO      "
				Escribir "....................................."
				Escribir "Hora     | Paciente (Cédula/Estado)"
				Escribir "---------------------------------------------"
				
				Para i <- 0 Hasta MAX_CITAS - 1 Con Paso 1 Hacer
					
					Escribir citas[i, 0], " | ", citas[i, 1]
				FinPara
				
				Escribir "---------------------------"
				Esperar Tecla
				
			3:
				Escribir "Saliendo del sistema de asignación de citas. ¡Hasta pronto!"
				
			De Otro Modo:
				Escribir "[!] Opción inválida. Intente de nuevo."
				Esperar Tecla
				
		FinSegun
		
	Hasta Que opcion = 3
	
FinAlgoritmo