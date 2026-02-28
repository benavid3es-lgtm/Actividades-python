import pandas as pd
import os
datos = pd.read_csv("estudiantes.csv")



# cargar datos desde el archivo csv

def cargar_datos():
    archivo = "estudiantes.csv"

    print("buscando archivo en:", os.getcwd())

    if not os.path.isfile(archivo):
        print("el archivo no existe")
        return None
    
    df = pd.read_csv(archivo)
    df.columns = df.columns.str.strip().str.lower()

    return df 

 

def menu():
    df = cargar_datos()
    if df is None:
        return

    while True:
        print("\n MENÚ ")
        print("1. Muestre los primeros 10 registros")
        print("2. Mostrar estudiantes con promedio mayor a 4.2")
        print("3. Mostrar estudiantes de determinado sexo y edad mayor a 21")
        print("4. Promedio del promedio por sexo")
        print("5. Mostrar estudiante de mayor edad")
        print("6. Mostrar estudiantes con edad = 20 o promedio > 4.5")
        print("7. Generar archivo alto_rendimiento.csv")
        print("8. Salir")

        opcion = input("Seleccione una opción: ")

        # 1 Muestre los primeros 10 registros
        if opcion == "1":
            print("\n PRIMEROS 10 REGISTROS")
            print(df.head(10))

        # 2 Promedio mayor a 4.2
        elif opcion == "2":
            print(df[df["promedio"] > 4.2])

        # 3 Sexo determinado y edad > 21
        elif opcion == "3":
            sexo = input("Ingrese el sexo: ")
            resultado = df[(df["sexo"].str.lower() == sexo.lower()) & (df["edad"] > 21)]
            print(resultado)

        # 4 Promedio del promedio por sexo
        elif opcion == "4":
            sexo = input("Ingrese el sexo: ")
            promedio = df[df["sexo"].str.lower() == sexo.lower()]["promedio"].mean()
            print(" Promedio general:", promedio)

        # 5 Estudiante de mayor edad
        elif opcion == "5":
            mayor = df.loc[df["edad"].idxmax()]
            print("\n Estudiante de mayor edad:")
            print(mayor)

        # 6 Edad = 20 o promedio > 4.5
        elif opcion == "6":
            resultado = df[(df["edad"] == 20) | (df["promedio"] > 4.5)]
            print(resultado)

        # 7 Generar archivo alto_rendimiento.csv
        elif opcion == "7":
            alto = df[df["promedio"] > 4.5]
            alto.to_csv("alto_rendimiento.csv", index=False)
            print(" Archivo alto_rendimiento.csv generado correctamente.")

        # 8 Salir
        elif opcion == "8":
            print(" Saliendo del programa...")
            break

        else:
            print(" Opción inválida. Intente nuevamente.")


# Ejecutar menú
menu()



    
            


