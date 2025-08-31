-- Datos de prueba para la tabla nutricionista
INSERT INTO nutricionista (nombre, apellido, numero_licencia, especialidad, email, telefono, activo)
VALUES ('María', 'Suárez', 'NUT-2024-010', 'Nutrición Pediátrica', 'maria.suarez@demo.com', '555-5678', true);

INSERT INTO nutricionista (nombre, apellido, numero_licencia, especialidad, email, telefono, activo)
VALUES ('Esteban', 'Moreno', 'NUT-2024-011', 'Nutrición Geriátrica', 'esteban.moreno@demo.com', '555-6789', true);

-- Pacientes para la nutricionista María Suárez (ID 1)
INSERT INTO paciente (name, apellido, fecha_nacimiento, email, telefono, nutricionista_id)
VALUES ('Valentina', 'Torres', '2008-03-10', 'valentina.torres@demo.com', '555-2001', 1);

INSERT INTO paciente (name, apellido, fecha_nacimiento, email, telefono, nutricionista_id)
VALUES ('Samuel', 'Gómez', '2012-11-05', 'samuel.gomez@demo.com', '555-2002', 1);

-- Notas para el paciente Valentina Torres (ID 1)
INSERT INTO nota (titulo, contenido, fecha_creacion, tipo_nota, paciente_id, nutricionista_id)
VALUES ('Consulta pediátrica', 'Paciente con bajo peso para la edad. IMC: 16.2', '2024-04-12T09:15:00', 'Consulta', 1, 1);

INSERT INTO nota (titulo, contenido, fecha_creacion, tipo_nota, paciente_id, nutricionista_id)
VALUES ('Recomendaciones nutricionales', 'Aumentar ingesta de proteínas y lácteos', '2024-04-12T09:45:00', 'Recomendación', 1, 1);

-- Mediciones para Valentina Torres (ID 1)
INSERT INTO medicion (fecha, peso, altura, circunferencia_cintura, circunferencia_cadera, porcentaje_grasa_corporal, paciente_id, nutricionista_id)
VALUES ('2024-04-12', 38.0, 145.0, 55.0, 70.0, 18.0, 1, 1);

INSERT INTO medicion (fecha, peso, altura, circunferencia_cintura, circunferencia_cadera, porcentaje_grasa_corporal, paciente_id, nutricionista_id)
VALUES ('2024-05-12', 39.5, 146.0, 56.0, 71.0, 18.5, 1, 1);
