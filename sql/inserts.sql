

USE inventario;

INSERT INTO marcas (id, nombre_marca, email_proovedor)
VALUES 
('011', 'Noto', 'contacto@noto.com'), 
('012', 'Altitud 1800', 'contacto@alltitud1800.com'), 
('013', 'Pausa Alquimia', 'contacto@pausaalquimia.com'), 
('014', 'Lioncourt', 'contacto@lioncourt.com'),
('015', 'Pararelo Cero', 'contacto@paralelocero.com');

INSERT INTO categorias (id, nombre_categoria)
VALUES
('001', 'Cafe en Grano y Molido'), 
('003', 'Metodos de Extraccion'), 
('004', 'Molinos y Herramientas'),
('005', 'Vajillas y Estilo de Vida'), 
('006', 'Mantenimiento y Limpieza');

INSERT INTO subcategorias (id, nombre_subcategoria)
VALUES
('101', 'Origen Unico'),
('102', 'Blends de la Casa'),
('103', 'Descafeinado'),
('201', 'Cafeteras de Goteo/Filtro'),
('202', 'De Presion'),
('203', 'Filtros de Papel'),
('301', 'Molinos de Cafe'),
('302', 'Basculas y Temporizadores'),
('303', 'Jarras y Termometros'),
('401', 'Tazas y Vasos'),
('402', 'Termos y Vasos de Viaje'),
('403', 'Almacenamiento')
('501', 'Descalificadores'),
('502','Cepillos y Limpiadores');

INSERT INTO productos (id, nombre, precio, marcas_id, categoria_id, subcategoria_id)
VALUES
// tengo q poner 42 productos //
