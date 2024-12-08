1. Crea y agrega al entregable las consultas para completar el setup de acuerdo a lo
pedido.

CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

INSERT INTO Usuarios (email, nombre, apellido, rol) VALUES 
('admin@example.com', 'Daniel', 'pinaud', 'administrador'),
('daniela.artigas@example.com', 'daniela', 'artigas', 'usuario'),
('marc.sepu@example.com', 'Marc', 'sepu', 'usuario'),
('gabo.art@example.com', 'gabo', 'art', 'usuario'),
('marlys.d@example.com', 'marlys', 'd', 'usuario');

CREATE TABLE Posts (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    destacado BOOLEAN DEFAULT FALSE,
    usuario_id BIGINT REFERENCES Usuarios(id)
);

INSERT INTO Posts (titulo, contenido, usuario_id)
VALUES
('viajes chiloe ', 'post chiloe.', 1),
('viajes puerto', 'post puerto.', 1),
('gatos ', 'post gatos.', 2),
('animales ', 'post animales.', 3),
('Noticias ', 'Las noticias más relevantes de la última semana resumidas para tu conveniencia.', NULL);


