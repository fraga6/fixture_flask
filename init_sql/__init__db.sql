CREATE DATABASE IF NOT EXISTS fixture_db;
USE fixture_db;

CREATE TABLE IF NOT EXISTS paises(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS partidos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local INT,
    equipo_visitante INT,
    estadio INT,
    fecha DATE,
    fase VARCHAR(100),
    goles_local INT,
    goles_visitante INT,
    FOREIGN KEY (equipo_local) REFERENCES paises(id),
    FOREIGN KEY (equipo_visitante) REFERENCES paises(id),
    FOREIGN KEY (estadio) REFERENCES estadios(id),  
);

CREATE TABLE IF NOT EXISTS estadios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
);

CREATE TABLE IF NOT EXISTS usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
);