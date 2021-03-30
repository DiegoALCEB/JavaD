CREATE DATABASE tienda;
\c tienda;

--Table PRODUCTOS
CREATE TABLE PRODUCTOS(
	"id_producto" SERIAL NOT NULL,
	"nombre" VARCHAR(45) NULL,
	"codigo_barras" VARCHAR(150) NULL,
	"precio_venta" DECIMAL(16,2) NULL,
	"cantidad_stock" INT NOT NULL,
	"estado" BOOLEAN NULL,
	PRIMARY KEY("id_producto")
);

--TABLE CLIENTES

CREATE TABLE CLIENTES(
	"id" VARCHAR(20) NOT NULL, 
	"nombre" VARCHAR(40) NULL,
	"apellidos" VARCHAR(100) NULL,
	"celular" NUMERIC NULL,
	"direccion" VARCHAR(80) NULL,
	"correo_electronico" VARCHAR(70) NULL,
	PRIMARY KEY("id")
);



-- PRODUCTOS
INSERT INTO productos VALUES (1, 'Guayaba Feijoa', '7029 A42 23', 300, 500, true);
INSERT INTO productos VALUES (2, 'Mango', '0316 R56 01', 2100, 250, true);
INSERT INTO productos VALUES (3, 'Manzana', '7923 T23 19', 700, 130, true);
INSERT INTO productos VALUES (4, 'Aguacate', '9322 Q33 02', 2500, 98, true);
INSERT INTO productos VALUES (5, 'Lechuga', '9742 S22 21', 4000, 86, true);
INSERT INTO productos VALUES (6, 'Tomate', '0483 R00 97', 290, 430, true);
INSERT INTO productos VALUES (7, 'Pera', '9999 X10 01', 750, 210, true);
INSERT INTO productos VALUES (8, 'Apio', '3390 F29 45', 150, 115, true);
INSERT INTO productos VALUES (9, 'Papaya', '5291 J34 32', 4500, 73, true);
INSERT INTO productos VALUES (10, 'Limón', '7886 N18 32', 350, 425, true);
INSERT INTO productos VALUES (11, 'Brownie', '6683 H15 20', 2500, 80, true);
INSERT INTO productos VALUES (12, 'Pan tajado', '5745 F05 47', 4500, 120, true);
INSERT INTO productos VALUES (13, 'Torta', '3831 D97 99', 10000, 35, true);
INSERT INTO productos VALUES (14, 'Tortilla', '4335 Z33 84', 6400, 87, true);
INSERT INTO productos VALUES (15, 'Tostadas', '6584 M19 25', 4000, 45, true);
INSERT INTO productos VALUES (16, 'Chocorramo', '4487 S00 97', 2000, 105, true);
INSERT INTO productos VALUES (17, 'Salmón', '4546 A00 01', 28000, 55, true);
INSERT INTO productos VALUES (18, 'Punta de anca', '3678 E57 22', 12000, 32, true);
INSERT INTO productos VALUES (19, 'Posta', '8893 O01 03', 7800, 40, true);
INSERT INTO productos VALUES (20, 'Costilla de cerdo', '4534 Q12 88', 8600, 70, true);
INSERT INTO productos VALUES (21, 'Tilapia', '5684 R53 02', 17000, 60, true);
INSERT INTO productos VALUES (22, 'Merluza', '3523 R04 00', 23000, 45, true);
INSERT INTO productos VALUES (23, 'Leche de vaca', '2323 T56 33', 2500, 500, true);
INSERT INTO productos VALUES (24, 'Queso', '7786 K19 56', 4000, 300, true);
INSERT INTO productos VALUES (25, 'Huevos de gallina feliz', '3478 M74 01', 400, 1000, true);
INSERT INTO productos VALUES (26, 'Clara de huevo', '7932 R31 46', 3200, 200, true);
INSERT INTO productos VALUES (27, 'Suero costeño', '5463 W23 33', 9000, 110, true);
INSERT INTO productos VALUES (28, 'Agua', '8965 I32 11', 2000, 600, true);
INSERT INTO productos VALUES (29, 'Jugo de naranja', '7445 T87 44', 7400, 200, true);
INSERT INTO productos VALUES (30, 'Gaseosa Colombiana', '3434 R34 63', 3100, 175, true);
INSERT INTO productos VALUES (31, 'Jugo de Lulo', '9753 W33 19', 8250, 630, true);
INSERT INTO productos VALUES (32, 'Tea', '9836 F35 69', 1900, 450, true);
INSERT INTO productos VALUES (33, 'Cerveza', '3432 G67 21', 2100, 800, true);
INSERT INTO productos VALUES (34, 'Tequila', '9529 E45 98', 65000, 764, true);
INSERT INTO productos VALUES (35, 'Ron', '1947 R07 53', 55000, 240, true);
INSERT INTO productos VALUES (36, 'Aguardiente Antioqueño', '3160 A54 94', 40000, 480, true);
INSERT INTO productos VALUES (37, 'Vino', '7891 W46 95', 82000, 560, true);
INSERT INTO productos VALUES (38, 'Crema dental', '6310 C99 73', 7500, 200, true);
INSERT INTO productos VALUES (39, 'Jabón de manos', '9371 J14 75', 4900, 90, true);
INSERT INTO productos VALUES (40, 'Enjuague bucal', '1942 T68 01', 12000, 105, true);
INSERT INTO productos VALUES (41, 'Shampoo', '6789 W01 23', 9300, 200, true);
INSERT INTO productos VALUES (42, 'Desodorante', '7333 S21 36', 6900, 85, true);
INSERT INTO productos VALUES (43, 'Arroz', '4676 I83 00', 3500, 600, true);
INSERT INTO productos VALUES (44, 'Lentejas', '7333 S21 36', 3000, 560, true);
INSERT INTO productos VALUES (45, 'Harina', '7333 S21 36', 1800, 300, true);
INSERT INTO productos VALUES (46, 'Sal', '7333 S21 36', 1400, 500, true);
INSERT INTO productos VALUES (47, 'Aceite', '7333 S21 36', 6500, 135, true);
INSERT INTO productos VALUES (48, 'Cereal', '4673 K53 98', 7000, 75, true);
INSERT INTO productos VALUES (49, 'Frijol', '2745 F40 45', 8200, 270, true);
INSERT INTO productos VALUES (50, 'Café', '6351 R33 92', 7200, 400, true);

-- CLIENTES
INSERT INTO clientes VALUES ('4546221', 'Johannes', 'Kepler', 3104583224, 'Cl 3 # 33 - 33', 'kepler@me.com');
INSERT INTO clientes VALUES ('2552243', 'Galileo', 'Galilei', 3462257293, 'Cl 1 # 11 - 11', 'gali@leo.com');
INSERT INTO clientes VALUES ('983824', 'Nicolás', 'Copernico', 3019392466, 'Cl 2 # 22 - 22', 'nico@cope.com');