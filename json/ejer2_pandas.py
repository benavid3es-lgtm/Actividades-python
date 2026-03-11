import pandas as pd 
def analizarventas():
    try:

        df = pd.read_json('ventas.json')

        total_por_vendedor = df.groupby('vendedor')['ventas'].sum()

#suma todas las ventas y las divide por el total del registro que son (50)}
        promedio_ventas = df['ventas'].mean()

#devuelve el nombre con la suma de ventas mas alta 
        vendedor_max = total_por_vendedor.idxmax()
        monto_max = total_por_vendedor.max()

#mostrar resultados 
        print("\n" + "0"*58)
        print("reporte de ventas")
        print("="*50)
        print("\nTOTAL ACUMULADO POR VENDEDOR:")
        print(total_por_vendedor)

        print("\n" + "-"*50 )
        print(f"promedio general de ventas: ${promedio_ventas:,.0f}")
        print(f"lider de ventas: {vendedor_max} (${monto_max:,.0f})")
        print("="*50)



#total raiking 
        raiking = total_por_vendedor.sort_values(ascending=False)
        raiking.to_json('raiking_ventas.json', indent=4)

        print("\n archivo 'ranking_ventas.json' generado exitosamente.")

    except FileExistsError:
        print("error no se encontro archivo 'ventas.json'.")
    except Exception as e:
        print(f"ocurrio un error:{e}")


if __name__=="__main__":
    analizarventas()