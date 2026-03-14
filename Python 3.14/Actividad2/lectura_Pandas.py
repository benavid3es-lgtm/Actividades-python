import pandas as pd 

df = pd.read_csv("Examen act1 py/almacen1.csv")

df['valor_total'] = df['precio'] * df['cantidad']

producto_mas_costo = df.loc[df['precio'].idxmax()]
producto_mas_stock = df.loc[df['cantidad'].idxmax()]

print("----ANALISIS INVENTARIO----")
print(f"producto con mayor costo: {producto_mas_costo['nombre']} (${producto_mas_costo['precio']})")
print(f"producto con mas cantidad: {producto_mas_stock['nombre']} ({producto_mas_stock['cantidad']} unidades)")


print("\n---Vista previa actualizada---")
print(df.head())

df.to_csv("inventario_actualizado.csv", index=False, encoding='utf-8')



