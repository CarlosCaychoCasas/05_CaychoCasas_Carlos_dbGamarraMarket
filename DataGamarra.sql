use dbGamarraMarket;

INSERT INTO CLIENTE (id, tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo)  
VALUES  
(1, 'DNI', '77889955', 'Alberto', 'Solano pariona', 'albertopariona@empresa.com', '99846103', STR_TO_DATE('1970/02/10', '%Y/%m/%d'), 1),  
(2, 'DNI', '45781233', 'Alicia', 'Garcia campos', '', '', STR_TO_DATE('1980/03/20', '%Y/%m/%d'), 1),
(3, 'CNE', '315487922', 'Juana', 'Avila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('1986/06/06', '%Y/%m/%d'), 1),
(4, 'CNE', '122116633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '', STR_TO_DATE('1970/02/10', '%Y/%m/%d'), 1),
(5, 'CNE', '088741589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263', STR_TO_DATE('1981/07/25', '%Y/%m/%d'), 1),
(6, 'DNI', '45122587', 'Mario', 'Barrios Martinez', 'mario.barrios@outlook.com', '986525871', STR_TO_DATE('1987/10/10', '%Y/%m/%d'), 1),
(7, 'CNE', '175258564', 'Brunela', 'Tarazana Guerra', 'brunela.tarazona@gmail.com', '995236741', STR_TO_DATE('1990/06/06', '%Y/%m/%d'), 1),
(8, 'DNI', '747142536', 'Alejandra', 'Jimenez huapaya', '', '941525365', STR_TO_DATE('1989/06/01', '%Y/%m/%d'), 1),
(9, 'DNI', '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '985814723', STR_TO_DATE('1991/10/01', '%Y/%m/%d'), 1),
(10, 'CNE', '465772587', 'Mario', 'Rodriguez Mayo', 'mario,rodriguez@outlook.com', '912662587', STR_TO_DATE('1987/11/10', '%Y/%m/%d'), 1),
(11, 'CNE', '837950514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', STR_TO_DATE('1988/12/21', '%Y/%m/%d'), 1),
(12, 'DNI', '74142585', 'Pedro Alejandro', 'Candela Valenzuela', 'pedrocandela@gmail.com', '94148525', STR_TO_DATE('1995/06/30', '%Y/%m/%d'), 1),
(13, 'DNI', '53298147', 'Angel Miguel', 'Rojas avila', 'algel.rojas@ouylook.com', '', STR_TO_DATE('1975/03/02', '%Y/%m/%d'), 1),
(14, 'DNI', '11453265', 'Hilario Farfan', 'Avila huapaya', '', '985514326', STR_TO_DATE('2000/05/02', '%Y/%m/%d'), 1),
(15, 'CNE', '757472186', 'Octavio Carlos', 'Marquez Osorio', 'octavio.marquez@outlook.es', '966223141', STR_TO_DATE('2000/09/22', '%Y/%m/%d'), 1),
(16, 'CNE', '558693219', 'Manolo Enrique', 'Vazquez Saravia', 'manolo.vazquez@outlook.es', '966223141', STR_TO_DATE('2000/09/22', '%Y/%m/%d'), 1),
(17, 'DNI', '41552567', 'Genoveva', 'Ortiz quispe', 'genoveva.ortiz@outlook.es', '92564137', STR_TO_DATE('2003/04/12', '%Y/%m/%d'), 1),
(18, 'DNI', '49985471', 'Oscar Carlos', 'Quiroz zabala', '', '988223145', STR_TO_DATE('2004/10/12', '%Y/%m/%d'), 1),
(19, 'DNI', '44992217', 'Veronica', 'Romero Vargas', 'veronica.romero@yahoo.com', '', STR_TO_DATE('2002/08/25', '%Y/%m/%d'), 1),
(20, 'DNI', '00253941', 'Eliseo', 'Prada Ortiz', 'eliseo.prada@yahoo.com', '', STR_TO_DATE('2004/09/15', '%Y/%m/%d'), 1);
SELECT * FROM CLIENTE;
SELECT * FROM CLIENTE WHERE id = 1;
UPDATE CLIENTE
SET  celular = '922881101'
WHERE id = 10;

UPDATE CLIENTE
SET  celular = '977226604'
WHERE id = 13;

DELETE FROM CLIENTE WHERE numero_documento = "11453265";
DELETE FROM CLIENTE WHERE numero_documento = "74142585";
DELETE FROM CLIENTE WHERE numero_documento = "49985471";

UPDATE CLIENTE
SET  celular = ''
WHERE numero_documento = "87952514";

UPDATE CLIENTE
SET  celular = ''
WHERE numero_documento = "55869321";

UPDATE CLIENTE
SET  celular = ''
WHERE numero_documento = "74142585";

UPDATE CLIENTE
SET  email = 'oscar.quiroz@yahoo.es'
WHERE id =18;



INSERT INTO VENDEDOR (id, tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo)  
VALUES  
(1, 'DNI', '85471236', 'Enrique', 'Perez Manco', '1500.00', '99846103', 'enrique.perez@outlook.com', 1),
(2, 'DNI', '47259136', 'Sofia', 'Avila Solis', '1350.00', '', '', 1),
(3, 'DNI', '61542280', 'Marcela', 'Napaico Cama', '1600.00', '965874357', 'marcela.napaico@gmail.com', 1),
(4, 'CNE', '742536140', 'Carmelo', 'Rodriguez Chauca', '1550.00', '', 'carmelo.rodriguez@yahoo.com', 1);
SELECT * FROM VENDEDOR;
SELECT * FROM VENDEDOR WHERE id = 1;



INSERT INTO PRENDA (id, descripcion, marca, cantidad, talla, precio,activo)  
VALUES  
(1, 'Pantalon jeans', 'Levis', '60', '28','65.80', 1),
(2, 'Camisa manga corta', 'Adams', '75', '16','55.00', 1),
(3, 'Polo sport', 'Australia', '100', '16','40.00', 1),
(4, 'Camisa manga larga', 'Newport', '150', '16','42.50', 1),
(5, 'Pijama para caballero', 'Adams', '180', '28','79.50', 1),
(6, 'Corbata', 'Maxwell', '58', '16','14.50', 1),
(7, 'Pijama para dama', 'Adams', '170', '24','55.50', 1),
(8, 'Pantalon jeans', 'Australia', '200', '28','68.50', 1),
(9, 'Camisa Sport', 'Jhon Holden', '85', '16','88.50', 1),
(10, 'Shorts Jeans', 'Pepe Jeans', '185', '28','77.20', 1);
SELECT * FROM PRENDA;
SELECT * FROM PRENDA WHERE id = 1;

INSERT INTO VENTA (id, fecha_hora, cliente_id, vendedor_id, activo) 
VALUES 
    (1, '2023-05-01 19:04:08', 4, 1, 1),
    (2, '2023-05-01 19:04:08', 6, 3, 1),
    (3, '2023-05-01 19:04:08', 10, 1, 1),
    (4, '2023-05-01 19:04:08', 18, 4, 1);
    
SELECT * FROM VENTA;
SELECT * FROM VENTA WHERE id = 1;



INSERT INTO VENTA_DETALLE (id, venta_id, prenda_id, cantidad) 
VALUES 
    (1, 1, 6, 3),
    (2, 1, 3, 5),
    (3, 1, 2, 7),
    (4, 2, 3, 2),
    (5, 3, 7, 4),
    (6, 3, 10, 6),
    (7, 3, 2, 4),
    (8, 3, 5, 7),
    (9, 4, 2, 6),
    (10, 4, 5, 3);
SELECT * FROM VENTA_DETALLE;
SELECT * FROM VENTA_DETALLE WHERE id = 1;





