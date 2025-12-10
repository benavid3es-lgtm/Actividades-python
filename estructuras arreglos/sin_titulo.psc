Algoritmo Venta_Boletas_Concierto
	//definir variables y arreglos
    Dimension cedulas[20]
    Definir i, opcion, total_boletas, cant_compra Como Entero
    Definir cedula,cedulas, contador Como Entero
    Definir existe Como Logico
	

    contador = 0
    total_boletas = 10  
	
    Repetir
        Limpiar Pantalla
        Escribir"  BOLETERIA   "
        Escribir "Boletas disponibles: ", total_boletas
        Escribir "1. Comprar boletas"
        Escribir "2. Mostrar compradores"
        Escribir "3. Salir"
        Escribir "Seleccione una opcion: "
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Si total_boletas = 0 Entonces
                    Escribir "No hay mas boletas disponibles."
                Sino
                    Escribir "Ingrese su numero de cedula: "
                    Leer cedula
                    existe = Falso
					
					Si contador > 0 Entonces
						Para i = 0 Hasta contador - 1 Hacer
							Si cedulas[i] = cedula Entonces
								existe = Verdadero
							FinSi
						FinPara
					FinSi
					
                    Si existe = Verdadero Entonces
                        Escribir "ERROR: Esta cedula ya compro boleta. Venta rechazada."
                    Sino
                        Escribir "Cuantas boletas desea comprar (maximo 4): "
                        Leer cant_compra
						
                        Si cant_compra > 0 & cant_compra <= 4 Entonces
							
                            Si cant_compra <= total_boletas Entonces
                                cedulas[contador] = cedula
                                contador = contador + 1
                                total_boletas = total_boletas - cant_compra
                                Escribir "Compra realizada con exito."
								
                                Si total_boletas = 0 Entonces
                                    Escribir "BOLETAS AGOTADAS. El sistema finalizara."
                                    
                                FinSi
                            Sino
                                Escribir "No hay suficientes boletas disponibles."
                            FinSi
                        Sino
                            Escribir "Cantidad invalida. Maximo 4 boletas."
                        FinSi
                    FinSi
                FinSi
            2:
                Escribir "Lista de clientes"
                Para i = 0 Hasta contador - 1 Hacer
                    Escribir "Cedula: ", cedulas[i]
                FinPara
				
            3:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opcion invalida."
        FinSegun
        Esperar Tecla
    Hasta Que opcion = 3
FinAlgoritmo
