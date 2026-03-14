import pandas as pd 

url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json"

try:
    df = pd.read_json(url)

    mujeres_df = df[df['sexo'] == 'Femenino']
    mujeres_df.to_json("deportistas_mujeres.json", orient='records', indent=4, force_ascii=False)

   
    
    ciclismo_df = df[
        (df['deporte'].str.contains("ciclismo", case=False, na=False)) &
        (df['edad'] >= 28) &
        (df['edad'] <= 35)
    ]
    ciclismo_df.to_json("deportistas_ciclismo_ruta.json", orient='records', indent=4, force_ascii=False)

    # --- IMPRESIÓN DE CICLISMO (Para que se vea en terminal) ---
    print("\n" + "="*40)
    print("REPORTE CICLISMO DE RUTA")
    print("="*40)
    if not ciclismo_df.empty:
        for index, fila in ciclismo_df.iterrows():
            print(f"Nombre: {fila['nombre']:<20} | Edad: {fila['edad']}")
    else:
        print("No se encontraron deportistas con esos criterios.")
    print("="*40)
    for index, fila in ciclismo_df.iterrows():
        print(f"{fila['nombre']:<25} | {fila['edad']:<5} | {fila['sexo']:<10}")
    
    print("-" * 60)
    print(f"Total encontrados: {len(ciclismo_df)}")

    filtro_baloncesto = df[(df['sexo'] == 'Femenino') & (df['deporte'] == 'Baloncesto')]
    promedio_edad_baloncesto = filtro_baloncesto['edad'].mean()
    
    
    print(f"Promedio de edad de mujeres en baloncesto: {promedio_edad_baloncesto:.2f} años")

    hombres_df = df[df['sexo'] == 'Masculino']
    mayor_edad_hombre = hombres_df.loc[hombres_df['edad'].idxmax()]

    print(f"\nDeportista masculino de mayor edad:")
    print(f"Nombre: {mayor_edad_hombre['nombre']}, Edad: {mayor_edad_hombre['edad']} años")

    estatura_df = df[df['estatura'] > 1.85]
    estatura_df.to_json("deportistas_estatura_mayor_1.85.json", orient='records', indent=4, force_ascii=False)

    print("\n Todos los archivos han sido creados con éxito.")

except Exception as e:
    print(f" Ocurrió un error: {e}")