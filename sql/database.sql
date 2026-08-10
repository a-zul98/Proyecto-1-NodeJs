CREATE DATABASE IF NOT EXISTS inventario;
USE inventario;


DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS proveedores;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS usuarios;

CREATE TABLE marcas (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_marca VARCHAR(36) NOT NULL,    
    email_proovedor VARCHAR(36)
);

CREATE TABLE categorias (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_categoria VARCHAR(36) NOT NULL
);

CREATE TABLE subcategorias (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_subcategoria VARCHAR(36) NOT NULL,
    categoria_id INT NOT NULL,
    
    CONSTRAINT fk_subcategoria_categoria
        FOREIGN KEY (categoria_id) REFERENCES categorias(id)
        ON DELETE CASCADE
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(36) NOT NULL,
    clave VARCHAR(36) NOT NULL,
    rol ENUM('ADMIN','EMPLEADO') NOT NULL
);

CREATE TABLE productos (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre VARCHAR(36) NOT NULL,
    precio INT NOT NULL,
    stock INT NOT NULL,
    marcas_id INT NOT NULL,
    categoria_id INT NOT NULL,
    subcategoria_id INT NOT NULL, 
    CONSTRAINT fk_producto_marcas FOREIGN KEY (marcas_id) REFERENCES marcas(id) ON DELETE CASCADE,
    CONSTRAINT fk_producto_categoria FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE CASCADE,
    CONSTRAINT fk_producto_subcategoria FOREIGN KEY (subcategoria_id) REFERENCES subcategorias(id) ON DELETE CASCADE
);
