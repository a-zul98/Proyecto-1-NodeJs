

USE inventario;

INSERT INTO proveedores (empresa, telefono, email_proovedor)
VALUES 
('Beauty Pip', '1155426998', 'contacto@beautypip.com'), 
('GlowClaw', '1165983222', 'contacto@glowclaw.com'), 
('Ride', '1133335656', 'contacto@ride.com'), 
('Lioncourt', '1122544563', 'contacto@lioncourt.com'),
('RoxyFashion', '1156565928', 'contacto@roxyfashion.com');

INSERT INTO categorias (nombre_categoria)
VALUES
('Mascara de pestañas'), 
('Labiales'), 
('sombras de ojos'),
('Rubores'), 
('Crema facial'),
('Brochas'),
('Esmalte de uñas'),
('Tintura para el cabello'),
('Perfumes');

INSERT INTO usuarios (nombre, clave, rol)
VALUES
('Azul', '12345', 'ADMIN'),
('Guada', 'abc123', 'EMPLEADO'),
('Vale', '101010', 'EMPLEADO');

INSERT INTO productos (nombre, precio, stock, proveedor_id, categoria_id)
VALUES
('Rimel Rosa', 10100, 20, 1, 1),
('Rimel Negro', 10000, 25, 4, 1),
('Paleta Hello Kitty', 4000, 50, 3, 3),
('Paleta Capibara', 8000, 50, 1, 3),
('Paleta Vampiro', 12000, 10, 4, 3),
('Gloss Rosa', 800, 20, 4, 2),
('Labial Violeta', 1000, 100, 2, 2),
('Crema AntiAge', 25000, 8, 5, 5),
('Tintura Cobre', 4000, 10, 4, 8),
('Esmalte Dorado', 2000, 90, 3, 7);