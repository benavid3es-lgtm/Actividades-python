algoritmo Conjunto_Residencial
	
Dimension habitantes[3,5,4]
Definir habitantes Como Entero
Definir torre, piso, apto, opcion Como Entero
Definir total, suma, contador Como Entero
Definir promedio Como Real

Para torre = 0 Hasta 2 Hacer
	Para piso = 0 Hasta 4 Hacer
		Para apto = 0 Hasta 3 Hacer
			habitantes[torre,piso,apto] = 0
		FinPara
	FinPara
FinPara

Repetir
	Limpiar Pantalla
	Escribir "===== MENU CONJUNTO RESIDENCIAL ====="
	Escribir "1. Agregar habitantes a cada apartamento"
	Escribir "2. Consultar numero de habitantes por apartamento"
	Escribir "3. Consultar la cantidad total de habitantes del conjunto"
	Escribir "4. Consultar el promedio de habitantes por piso de cada torre"
	Escribir "5. Consultar el promedio de habitantes por torre"
	Escribir "6. Salir"
	Escribir "Ingrese opcion: "
	Leer opcion
	
	Segun opcion Hacer
		1:
			Para torre = 0 Hasta 2 Hacer
				Para piso = 0 Hasta 4 Hacer
					Para apto = 0 Hasta 3 Hacer
						habitantes[torre,piso,apto] = Aleatorio(1,5)
					FinPara
				FinPara
			FinPara
			Escribir "Habitantes generados correctamente."
			
		2:
			Escribir "Ingrese torre (1 a 3): "
			Leer torre
			Escribir "Ingrese piso (1 a 5): "
			Leer piso
			Escribir "Ingrese apartamento (1 a 4): "
			Leer apto
			
			torre = torre - 1
			piso = piso - 1
			apto = apto - 1
			
			Si torre>=0 & torre<=2 & piso>=0 & piso<=4 & apto>=0 & apto<=3 Entonces
				Escribir "Habitantes: ", habitantes[torre,piso,apto]
			Sino
				Escribir "Datos invalidos."
			FinSi
			
		3:
			total = 0
			Para torre = 0 Hasta 2 Hacer
				Para piso = 0 Hasta 4 Hacer
					Para apto = 0 Hasta 3 Hacer
						total = total + habitantes[torre,piso,apto]
					FinPara
				FinPara
			FinPara
			Escribir "Total de habitantes del conjunto: ", total
			
		4:
			Para torre = 0 Hasta 2 Hacer
				Para piso = 0 Hasta 4 Hacer
					suma = 0
					Para apto = 0 Hasta 3 Hacer
						suma = suma + habitantes[torre,piso,apto]
					FinPara
					promedio = suma / 4
					Escribir "Torre ", torre+1, " Piso ", piso+1, " Promedio: ", promedio
				FinPara
			FinPara
			
		5:
			Para torre = 0 Hasta 2 Hacer
				suma = 0
				contador = 0
				Para piso = 0 Hasta 4 Hacer
					Para apto = 0 Hasta 3 Hacer
						suma = suma + habitantes[torre,piso,apto]
						contador = contador + 1
					FinPara
				FinPara
				promedio = suma / contador
				Escribir "Promedio de habitantes Torre ", torre+1, ": ", promedio
			FinPara
			
		6:
		De Otro Modo:
			Escribir "Opcion incorrecta."
			
	FinSegun
	Esperar Tecla
Hasta Que opcion = 6

FinAlgoritmo
