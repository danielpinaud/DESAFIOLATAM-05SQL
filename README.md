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
  select count(*) from inscritos;
![image](https://github.com/user-attachments/assets/a45b9ffb-82e6-4a7b-bd05-a1f147107627)

2. ¿Cuántos inscritos hay en total?
   select sum(cantidad) from inscritos;
![image](https://github.com/user-attachments/assets/d8de7a8b-7f22-4cca-84e2-87d291cc4921)

3. ¿Cuál o cuáles son los registros de mayor antigüedad?
select * from inscritos where fecha in (select min(fecha) from inscritos);
![image](https://github.com/user-attachments/assets/bad18d30-cbb1-4a39-b6aa-5471a1bd4160)

4. ¿Cuántos inscritos hay por día? (Indistintamente de la fuente de inscripción)
   select sum(cantidad), fecha from inscritos group by fecha order by fecha asc;
   ![image](https://github.com/user-attachments/assets/5fbeeea1-ac87-4647-ab38-d796112c17af)

5. ¿Cuántos inscritos hay por fuente?
    select distinct(fuente), sum(cantidad) from inscritos group by fuente;
     ![image](https://github.com/user-attachments/assets/e2a452e0-4213-4758-8ae5-ff7e88e5a765)

6. ¿Qué día se inscribió la mayor cantidad de personas? Y ¿Cuántas personas se
  select sum(cantidad) as totalInscritos, fecha from inscritos group by fecha 
    having sum(cantidad) = (
        select max(totalDia) from (select fecha, sum(cantidad) as totalDia from inscritos 
        group by fecha) as subquery
    );
       ![image](https://github.com/user-attachments/assets/4a150971-d54c-48e7-a6ae-d1e44c8fbac3)
   
7. ¿Qué día se inscribieron la mayor cantidad de personas utilizando el blog? ¿Cuántas
personas fueron? (si hay más de un registro con el máximo de personas, considera
solo el primero)
   select fecha, cantidad from inscritos where cantidad in (select max(cantidad) from inscritos where fuente='Blog');
![image](https://github.com/user-attachments/assets/529df3d9-6ccc-440d-913a-4e3f06b9b5d3)


8. ¿Cuál es el promedio de personas inscritas por día? Toma en consideración que la
base de datos tiene un registro de 8 días, es decir, se obtendrán 8 promedios.
    select fecha, round(avg(cantidad),2) from inscritos group by fecha order by fecha asc;
   ![image](https://github.com/user-attachments/assets/10584a51-18c4-4d7a-a727-9f6104e67ef1)

9. ¿Qué días se inscribieron más de 50 personas?
     select fecha from inscritos group by fecha having sum(cantidad)>50 order by fecha asc;
      ![image](https://github.com/user-attachments/assets/7cc966ed-103e-44f8-b08c-28711ef53fe7)

10. ¿Cuál es el promedio por día de personas inscritas?
Considerando sólo calcular desde el tercer día.
select fecha, round(avg(cantidad), 1) from inscritos where fecha >= '2021-01-03' group by fecha order by fecha asc;
  ![image](https://github.com/user-attachments/assets/c0694711-7d54-43ab-bbc5-dd2d7f77db75)

