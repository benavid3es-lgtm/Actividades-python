Algoritmo datos_encuestados_senso_estudios 
	Definir primaria, secundaria, tecnica, profesional,postgrado, opcion,total Como Entero
	Definir enter Como Caracter
	Definir porcentaje Como Real
	
	primaria=0
	secundaria=0
	tecnica=0
	profesional=0
	postgrado=0
	
	Repetir
		Limpiar Pantalla
		Escribir "censo estudios 2025"
		Escribir ""
		Escribir "1,primaria"
		Escribir "2,secundaria"
		Escribir "3,tecnica"
		Escribir "4,profesional"
		Escribir "5,postgrado"
		Escribir "6,salir"
		Escribir ""
		Escribir "ingrese opcion"
		Leer opcion
		
		
		Segun opcion Hacer
			1 : primaria= primaria+1
				Escribir "sea registrado correctamente "
				Escribir "precione enter para continuar"
				Leer enter
			2 : secundaria = secundaria+1
				Escribir "sea registrado correctamente "
				Escribir "precione enter para continuar"
				Leer enter
			3 : tecnica = tecnica+1	
				Escribir "sea registrado correctamente "
				Escribir "precione enter para continuar"
				Leer enter
			4 : profesional= profesional+1
				Escribir "sea registrado correctamente "
				Escribir "precione enter para continuar"
				Leer enter
			5 : postgrado = postgrado+1
				Escribir "sea registrado correctamente "
				Escribir "precione enter para continuar"
				Leer enter
			6 : Escribir "se van a mostrar los resultados"	
		     
			De Otro Modo:
				Escribir "seleccione opcion valida"
				Leer enter
		Fin Segun
		
		

	Hasta Que opcion=6
	total= primaria+secundaria+tecnica+profesional+postgrado
	Escribir "el numero de encuestados es:",total 
	porcentaje = (primaria/total)*100
	Escribir "El", porcentaje,"% tiene estudio de primaria"
	porcentaje = (secundaria/total)*100
	Escribir "El", porcentaje,"% tiene estudio de secundaria"
	porcentaje = (tecnica/total)*100
	Escribir "El",porcentaje,"% tiene estudio de tecnica"
	porcentaje = (profesional/total)*100
	Escribir "El",porcentaje,"% tiene estudio de profesional"
	porcentaje = (postgrado/total)*100
	Escribir "El", porcentaje,"% tiene estudio de postgrado"
	
	
	
FinAlgoritmo
