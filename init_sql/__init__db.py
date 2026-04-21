import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="0",
    database="fixture_db",
)

cursor = conn.cursor()

with open("__init__db.sql", "r") as f:
    sql = f.read()

for statement in sql.split(";"):
    if statement.strip():
        cursor.execute(statement)
        conn.commit()

cursor.close()
conn.close()