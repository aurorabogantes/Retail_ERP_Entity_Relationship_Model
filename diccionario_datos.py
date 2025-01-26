import mysql.connector
import pandas as pd

# Conectar a la base de datos MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Ab83546392",
    database="proyectofinal"
)
    

cursor = conn.cursor()

# Consultar las tablas en la base de datos
cursor.execute("SHOW TABLES")
tables = cursor.fetchall()

# Crear una lista para almacenar la información del diccionario de datos
data_dict = []

# Obtener detalles de cada tabla
for table in tables:
    table_name = table[0]
    
    # Consultar información de las columnas
    cursor.execute(f"""
        SELECT 
            COLUMN_NAME, 
            COLUMN_TYPE, 
            IS_NULLABLE, 
            COLUMN_KEY, 
            COLUMN_KEY = 'PRI' AS IS_PRIMARY_KEY 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE TABLE_SCHEMA = 'ProyectoFinal' 
        AND TABLE_NAME = '{table_name}'
    """)
    
    columns = cursor.fetchall()
    
    for column in columns:
        data_dict.append({
            'Entidad': table_name,
            'Atributo': column[0],
            'Tipo de datos': column[1],
            'Acepta Nulos': column[2],
            'Llave': column[3],
            'IsPrimaryKey': column[4]
        })

# Cerrar la conexión
cursor.close()
conn.close()

# Crear un DataFrame de pandas con la información
df = pd.DataFrame(data_dict)

# Exportar el DataFrame a un archivo Excel
df.to_excel('Diccionario_de_datos.xlsx', index=False)

print("Diccionario de datos exportado a 'Diccionario_de_datos.xlsx'")