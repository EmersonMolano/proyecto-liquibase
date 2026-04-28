-- Insertar usuarios
INSERT INTO usuario VALUES
(gen_random_uuid(), 'Juan Perez',     'juan@email.com',    NOW()),
(gen_random_uuid(), 'Maria Lopez',    'maria@email.com',   NOW()),
(gen_random_uuid(), 'Carlos Mendez',  'carlos@email.com',  NOW()),
(gen_random_uuid(), 'Ana Torres',     'ana@email.com',     NOW());

-- Insertar tareas
INSERT INTO tarea VALUES
(gen_random_uuid(), 'Aprender Docker',    'Estudiar contenedores y orquestación',  'PENDIENTE',    NOW()),
(gen_random_uuid(), 'Crear API REST',     'Desarrollar endpoints del backend',      'EN_PROGRESO',  NOW()),
(gen_random_uuid(), 'Diseñar base datos', 'Modelar esquema relacional',             'COMPLETADA',   NOW()),
(gen_random_uuid(), 'Revisar pruebas',    'Ejecutar suite de tests unitarios',      'PENDIENTE',    NOW());
