import mysql.connector

db_config = mysql.connector.connect(
    host="localhost",
    user="root",
    password="0",
    database="fixture_db",
)

def get_connection():
    return mysql.connector.connect(db_config)

def execute(query):
    connection = get_connection()
    cursor = conexion.cursor(dictionary=True)
    try:
        cursor.execute(query)
        resultados = cursor.fetchall()
    finally:
        cursor.close()
        connection.close()