DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS proveedores;
DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT
);

CREATE TABLE proveedores (
    id_proveedor SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE compras (
    id_compra SERIAL PRIMARY KEY,
    id_producto INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO productos (nombre, categoria, precio, stock)
VALUES
('Laptop Lenovo', 'Tecnología', 850.00, 10),
('Mouse Logitech', 'Accesorios', 25.00, 50),
('Teclado Redragon', 'Accesorios', 45.00, 20);

INSERT INTO proveedores (nombre, telefono)
VALUES
('Tech Supply', '7777-8888'),
('CompuStore', '6666-9999');

INSERT INTO compras (id_producto, cantidad, fecha)
VALUES
(1, 2, '2026-05-10'),
(2, 5, '2026-05-12');

