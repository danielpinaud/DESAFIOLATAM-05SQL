DESAFIO SQL (DESAFIO 01 - DESAFIO 02)

------ 01 INTRO SQL---------
REATE DESAFIO-DANIEL-PINAUD


CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    email varchar(50) NOT NULL,
    nombre VARCHAR not null,
    teléfono varchar(16),
    empresa varchar(50),
    prioridad smallint not null check (prioridad between 1 and 10)
   );

select * from clientes

INSERT INTO clientes (id, email, nombre, teléfono, empresa, prioridad) VALUES
(1, 'DANIEL.PINAUD@GMAIL.COM', 'daniel pinaud', '9301111', 'empresa 1', 6),
(2, 'DANIEL@GMAIL.COM', 'daniel l', '9444441', 'empresa 8', 4),
(3, 'DANIELa@GMAIL.COM', 'daniel l', '9444441', 'empresa 8', 4),
(4, 'DANIELaa@GMAIL.COM', 'daniel l', '9444441', 'empresa 4', 4),
(5, 'carla@GMAIL.COM', 'carla', '65654441', 'empresa 7', 9),
(6, 'jorge@GMAIL.COM', 'jorge', '56561', 'empresa 2', 8),
(7, 'miguel@GMAIL.COM', 'miguel', '656441', 'empresa 2', 10),
(8, 'anaL@GMAIL.COM', 'ana', '565644441', 'empresa 2', 1),
(9, 'idaL@GMAIL.COM', 'ida', '764441', 'empresa 2', 2),
(10, 'xavi@GMAIL.COM', 'xavi', '6744441', 'empresa 2', 8);


select * from clientes order by prioridad desc limit 3,

select * from clientes where prioridad > 5;

------ 02 CONSULTAS AGRUPADAS---------
