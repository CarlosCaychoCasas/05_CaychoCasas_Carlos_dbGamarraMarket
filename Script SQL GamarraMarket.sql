
-- crear base de datos --
CREATE DATABASE dbGamarraMarket;

-- usar la base de datos --
USE  dbGamarraMarket;


-- Tabla CLIENTE --
CREATE TABLE CLIENTE (
    id INT PRIMARY KEY ,
    tipo_documento CHAR(3) NOT NULL,
    numero_documento CHAR(9) NOT NULL,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(90) NOT NULL,
    email VARCHAR(90) NOT NULL,
    celular CHAR(9) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    activo BOOL
);

-- Tabla VENDEDOR --
CREATE TABLE VENDEDOR (
    id INT PRIMARY KEY,
    tipo_documento CHAR(3) NOT NULL,
    numero_documento CHAR(15) NOT NULL,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(90) NOT NULL,
    salario DECIMAL(8, 2) NOT NULL,
    celular CHAR(9) NOT NULL,
    email VARCHAR(80) NOT NULL,
    activo BOOL
);

-- Tabla VENTA --
CREATE TABLE VENTA (
    id INT PRIMARY KEY,
    fecha_hora TIMESTAMP,
    activo BOOL,
    cliente_id INT,
    vendedor_id INT,
    CONSTRAINT venta_cliente_fk FOREIGN KEY (cliente_id)
        REFERENCES CLIENTE (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT vendedor_cliente_fk FOREIGN KEY (vendedor_id)
        REFERENCES VENDEDOR (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Tabla PRENDA
CREATE TABLE PRENDA (
    id INT PRIMARY KEY,
    descripcion VARCHAR(90) NOT NULL,
    marca VARCHAR(60) NOT NULL,
    cantidad INT NOT NULL,
    talla VARCHAR(10) NOT NULL,
    precio DECIMAL(8, 5) NOT NULL,
    activo BOOL
);

-- Tabla VENTA_DETALLE
CREATE TABLE VENTA_DETALLE (
    id INT PRIMARY KEY,
    cantidad INT NOT NULL,
    venta_id INT,
    prenda_id INT,
    CONSTRAINT venta_detalle_venta_fk FOREIGN KEY (venta_id)
        REFERENCES VENTA (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT venta_detalle_prenda_fk FOREIGN KEY (prenda_id)
        REFERENCES PRENDA (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
