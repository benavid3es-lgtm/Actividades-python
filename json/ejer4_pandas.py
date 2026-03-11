import json
import pandas as pd

archivo = "aprendices.json"

# 1. Leer datos desde JSON
try:
    with open(archivo, "r", encoding="utf-8") as f:
        datos = json.load(f)
except:
    datos = []

# 2. Agregar nuevo registro
nuevo = {
    "nombre": "Nicolas",
    "apellido": "ruiz",
    "programa": "ADSO",
    "edad": 20
}

datos.append(nuevo)

# 3. Actualizar el archivo JSON
with open(archivo, "w", encoding="utf-8") as f:
    json.dump(datos, f, indent=4)

# 4. Crear reporte con pandas
df = pd.DataFrame(datos)

print("Cantidad de aprendices por programa:")
print(df["programa"].value_counts())

print("\nPromedio de edad:")
print(df["edad"].mean())

# 5. Exportar resultados
df.to_csv("reporte_aprendices.csv", index=False)
df.to_json("reporte_aprendices.json", orient="records", indent=4)