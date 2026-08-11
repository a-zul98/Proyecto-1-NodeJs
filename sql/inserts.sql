

USE inventario;



INSERT INTO categorias (id, nombre_categoria)
VALUES
('001', 'Cafe en Grano y Molido'), 
('002', 'Metodos de Extraccion'), 
('003', 'Molinos y Herramientas'),
('004', 'Vajillas y Estilo de Vida'), 
('005', 'Mantenimiento y Limpieza');

INSERT INTO subcategorias (id, nombre_subcategoria, categoria_id)
VALUES
('101', 'Origen Unico', '001'),
('102', 'Blends de la Casa', '001'),
('103', 'Descafeinado', '001'),
('201', 'Cafeteras de Goteo/Filtro', '002'),
('202', 'De Presion', '002'),
('203', 'Filtros de Papel', '002'),
('301', 'Molinos de Cafe', '003'),
('302', 'Basculas y Temporizadores', '003'),
('303', 'Jarras y Termometros', '003'),
('401', 'Tazas y Vasos', '004'),
('402', 'Termos y Vasos de Viaje', '004'),
('403', 'Almacenamiento', '004'),
('501', 'Descalcificadores', '005'),
('502','Cepillos y Limpiadores', '005');

INSERT INTO marcas (id, nombre_marca, email_proveedor)
VALUES 
('011', 'Noto', 'contacto@noto.com'), 
('012', 'Altitud 1800', 'contacto@altitud1800.com'), 
('013', 'Pausa Alquimia', 'contacto@pausaalquimia.com'), 
('014', 'Lioncourt', 'contacto@lioncourt.com'),
('015', 'Pararelo Cero', 'contacto@paralelocero.com'),
('016', 'Alt 4', 'contacto@alt4.com'),
('017', 'Migo', 'contacto@migo.com');

INSERT INTO productos (id, nombre, stock, precio, marcas_id, subcategoria_id)
VALUES
('CAF-101-001','Cafe Etiopia Yirgacheffe (Bolsa 250g)', 20, 16.00, '015', '101'),
('CAF-101-002','Cafe Colombia FInca Las Flores (Bolsa 250g)',20, 18.00, '012', '101'),
('CAF-101-003','Cafe Sumatra Mandheling (Bolsa 250g)',20, 15.00, '015', '101'),
('CAF-102-001', 'Blend Andromeda (Bolsa 1kg)', 20, 38.00, '013', '102'),
('CAF-102-002', 'Blend Supernova (Bolsa 1kg)',20 , 35.00, '013', '102'),
('CAF-102-003', 'Blend Eclipse Nocturno (Bolsa 1kg)', 20, 14.50, '013', '102'),
('CAF-103-001', 'Descafeinado Caña de Azucar Peru (Bolsa 250g)',20, 17.50, '011', '103'),
('CAF-103-002', 'Descafeinado Swiss Water Colombia (Bolsa 250g)', 20, 16.00, '012', '103'),
('CAF-103-003', 'Descafeinado Blend Nebulosa (Bolsa 1kg)', 20, 39.00, '013', '103'),
('MET-201-001', 'Hario V60 Ceramica Blanca (Tamaño 02)', 20, 30.00, '014', '201'),
('MET-201-002', 'Chemex Classic (6 Tazas)', 20 , 49.50, '013', '201'),
('MET-201-003', 'Kalita Wave Stainless Steel (185)',20 , 35.00, '014', '201'),
('MET-202-001', 'AeroPress Original',20 , 39.94, '016', '202'),
('MET-202-002', 'Prensa Francesa Bodum Chambord (8 Tazas)',20 , 45.00, '012', '202'),
('MET-202-003', 'Bialetti Moka Express (3 Tazas)',20 , 34.00, '014', '202'),
('MET-203-001', 'Filtro de Papel Hario V60 (100 Unidades)',20, 8.50, '014', '203'),
('MET-203-002', 'Filtros Chemex Unidos en Circulo (100 Unidades)',20 , 11.00, '013', '203'),
('MET-203-003', 'Microfiltros de Papel AeroPress (350 Unidades)',20 , 7.50, '016', '203'),
('MET-301-001', 'Baratza Encore Electric Grinder',20 , 149.95, '016', '301'),
('MET-301-002', 'Timemore Chesnut C3 Manual',20 , 65.00, '011', '301'),
('MET-301-003', 'Fellow Opus All-Purpose Grinder',20, 195.00, '013', '301'),
('MET-302-001', 'Bascula Digital Timemore Black Mirror Basic 2',20 , 55.00, '016', '302'),
('MET-302-002', 'Acaia Pearl Lemon Yellow', 20, 150.00, '017', '302'),
('MET-302-003', 'Bascula de Barista Hario DRip Scale',20, 48.00, '011', '302'),
('MET-303-001', 'Fellow Stagg EKG Jarra Electrica',20, 165.00, '013', '303'),
('MET-303-002', 'Hario Buoono Jarra de Goteo (1.2L)',20, 42.00, '011', '303'),
('MET-303-003', 'Termometro Digital de Barisa Rhinowares',20, 15.00, '017', '303'),
('VAJ-401-001', 'Vaso de Doble Cristal Loveramics (250ml)',20, 18.00, '014',  '401'),
('VAJ-401-002', 'Taza de Ceramica Artesanal Nebulosa',20, 22.00, '017',  '401'),
('VAJ-401-003', 'Taza Loveceramics Egg Flat White (150ml)',20, 14.00, '014',  '401'),
('VAJ-402-001', 'Fellow Carter Move Mug (12oz)',20, 35.00, '013', '402'),
('VAJ-402-002', 'KeepCup Brew Cork (12oz)',20, 28.00, '011', '402'),
('VAJ-402-003', 'Termo Kinto Travel Tumbler (500ml)',20, 38.00, '012', '402'),
('VAJ-403-001', 'Contenedor al Vacio Fellow Atmos (0.7L)',20, 34.00, '013', '403'),
('VAJ-403-002', 'Bote de Acero Airsacpe',20, 32.00, '011', '403'),
('VAJ-403-003', 'Frasco Hermeticp de Vidrio Hario',20, 34.00, '011', '403'),
('MAN-501-001', 'Urnex Dezcal Pastillas Descalcificadoras (4u)',20, 9.00, '017', '501'),
('MAN-501-002', 'Liquido Descalcificador Universal Cafiza (250ml)',20, 12.00, '017', '501'),
('MAN-501-003', 'Polvo Limpiador Urnez Cafiza (566g)',20, 16.50, '017', '501'),
('MAN-502-001', 'Cepillo para Grupo de Espresso Puly Caff',20, 8.00, '017', '502'),
('MAN-502-002', 'Limpiador de Muelas de Molino Urnex Grindz',20, 24.00, '017', '502'),
('MAN-502-003', 'Paños de Microfibra para Barista Rhinowares (Pack x3)',20, 14.00, '017', '502');

