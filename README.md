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
1. ¿Cuántos registros hay?
![image](https://github.com/user-attachments/assets/a45b9ffb-82e6-4a7b-bd05-a1f147107627)


3. ¿Cuántos inscritos hay en total?
(1 Punto)
4. ¿Cuál o cuáles son los registros de mayor antigüedad?
(1 Punto)
HINT: ocupar subconsultas
5. ¿Cuántos inscritos hay por día? (Indistintamente de la fuente de inscripción)
(1 Punto)
6. ¿Cuántos inscritos hay por fuente?
(1 Punto)
7. ¿Qué día se inscribió la mayor cantidad de personas? Y ¿Cuántas personas se
inscribieron en ese día?
(1 Punto)
_ 2
www.desafiolatam.com
8. ¿Qué día se inscribieron la mayor cantidad de personas utilizando el blog? ¿Cuántas
personas fueron? (si hay más de un registro con el máximo de personas, considera
solo el primero)
(1 Punto)
9. ¿Cuál es el promedio de personas inscritas por día? Toma en consideración que la
base de datos tiene un registro de 8 días, es decir, se obtendrán 8 promedios.
(1 Punto)
fecha inscritos_por_dia
01-01-2021 50.00000
01-02-2021 60.00000
… …
Tabla 1. Resultado esperado del requerimiento 8
Fuente: Desafío Latam
10. ¿Qué días se inscribieron más de 50 personas?
(1 Punto)
11. ¿Cuál es el promedio por día de personas inscritas?
Considerando sólo calcular desde el tercer día.
(1 Punto)
fecha promedio_diario
01-03-2021 51.5
01-04-2021 46.5
… …
