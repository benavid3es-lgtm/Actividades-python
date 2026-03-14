import pandas as pd 
 
datos = {
    "codigo": [101, 102, 103, 104, 105],
    "nombre": [
        "Monitor 24'", "Teclado Mecánico", "Mouse Gamer", 
        "Resma Papel", "Silla Ergonómica"
    ],
    "precio": [650000, 185000, 85000, 18000, 450000],
    "cantidad": [8, 15, 3, 50, 6]
  
 }

df_inicial = pd.DataFrame(datos)
df_inicial.to_csv("almacen1.csv", index=False, encoding='utf-8')
print("Archivo'almacen1.csv' creado con exito ")
print("\nVista previa:")
print(df_inicial.head())

