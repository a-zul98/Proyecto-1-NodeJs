
CREATE DATABASE IF NOT EXISTS inventario;
USE inventario;


DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS proveedores;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS usuarios;

CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa VARCHAR(36) NOT NULL,
    telefono VARCHAR(36),
    email_proovedor VARCHAR(36)
);

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(36) NOT NULL
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    clave VARCHAR(255) NOT NULL,
    rol ENUM('ADMIN','EMPLEADO') NOT NULL
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL,
    stock INT NOT NULL,
    proveedor_id INT NOT NULL,
    categoria_id INT NOT NULL,
    
    CONSTRAINT fk_producto_proovedor
        FOREIGN KEY (proveedor_id) REFERENCES proveedores(id), 
        
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);