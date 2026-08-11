
CREATE DATABASE IF NOT EXISTS inventario;
USE inventario;

DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS subcategorias;
DROP TABLE IF EXISTS marcas;
DROP TABLE IF EXISTS categorias;

CREATE TABLE marcas (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_marca VARCHAR(100) NOT NULL,    
    email_proveedor VARCHAR(100)
);

CREATE TABLE categorias (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE subcategorias (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre_subcategoria VARCHAR(100) NOT NULL,
    categoria_id VARCHAR (36) NOT NULL,
    
    CONSTRAINT fk_subcategoria_categoria
        FOREIGN KEY (categoria_id) REFERENCES categorias(id)
        ON DELETE CASCADE
);

CREATE TABLE productos (
    id VARCHAR (36) PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
  marcas_id VARCHAR(36) NOT NULL,
    subcategoria_id VARCHAR(36) NOT NULL,
    
    CONSTRAINT fk_producto_marcas 
        FOREIGN KEY (marcas_id) REFERENCES marcas(id) ON DELETE CASCADE,
        
    CONSTRAINT fk_producto_subcategoria 
        FOREIGN KEY (subcategoria_id) REFERENCES subcategorias(id) ON DELETE CASCADE
);
