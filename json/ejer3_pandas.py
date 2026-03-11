import pandas as pd
import requests 

def procesarDatosSena():
    url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/SENA.matriculados.json"
    try:
        print("conectando con gitHub..")
        response = requests.get(url)
        data = response.json()
        df = pd.DataFrame(data)

        # 1. FILTRO ADSO
        df_adso = df[df['PROGRAMA'].str.contains("ANALISIS Y DESARROLLO DE SOFTWARE", na=False, case=False)]
        
        if df_adso.empty:
            print("No se encontraron datos para ADSO. Intentando búsqueda simplificada...")
            df_adso = df[df['PROGRAMA'].str.contains("ANALISIS", na=False, case=False)]

        if df_adso.empty:
            print("No se encontró el programa en la base de datos.")
        else:
            # Exportar
            df_adso.to_json('adso_ctpi.json', indent=4, orient='records', force_ascii=False)
            print("Archivo 'adso_ctpi.json' creado con éxito.")

            # 2. FILTRO FICHA 
            df_ficha = df_adso[df_adso['FICHA'].astype(str).str.strip() == "3312932"]
            
            # 3. FILTRO FINAL
            filtro_final = df_ficha[
                (df_ficha['CODIGO_PROGRAMA'].astype(str).str.strip() == "228118") &
                (df_ficha['ESTADO_APRENDIZ'].str.contains("TRANSITO", na=False, case=False))
            ]

            print("\n" + "="*50)
            print(f"cantidad de aprendices encontrados: {len(filtro_final)}")
            print("="*50)
            
            if not filtro_final.empty:
                # Mostrar nombres encontrados
                print(filtro_final[['NOMBRE', 'ESTADO_APRENDIZ']])
            else:
                print(" Filtros aplicados. Si sale 0, es porque en esta base de datos")
                print("no hay aprendices que cumplan las 3 condiciones al mismo tiempo.")

    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    procesarDatosSena()