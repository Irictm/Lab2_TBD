-- Insertar datos en la tabla institution
INSERT INTO Institution (id, name) VALUES
(1, 'Hospital General'),
(2, 'Cruz Roja'),
(3, 'Protección Civil'),
(4, 'Bomberos'),
(5, 'Centro de Emergencias'),
(6, 'Defensa Civil'),
(7, 'Cruz Verde'),
(8, 'Cuerpo de Rescate'),
(9, 'Asociación de Voluntarios de Rescate'),
(10, 'Cruz Ámbar'),
(11, 'Brigada de Rescate'),
(12, 'Servicio de Emergencia Médica'),
(13, 'Equipo de Rescate Internacional'),
(14, 'Cuerpo de Bomberos Voluntarios'),
(15, 'Unidad de Rescate y Salvamento'),
(16, 'Centro de Coordinación de Emergencias'),
(17, 'Cruz Azul'),
(18, 'Unidad de Respuesta Rápida'),
(19, 'Cuerpo de Bomberos Municipales'),
(20, 'Equipo de Rescate Aéreo'),
(21, 'Centro de Control de Desastres'),
(22, 'Brigada de Emergencias'),
(23, 'Cuerpo de Bomberos Forestales'),
(24, 'Unidad de Protección Civil'),
(25, 'Grupo de Intervención en Emergencias'),
(26, 'Equipo de Apoyo Médico'),
(27, 'Centro de Operaciones de Emergencia'),
(28, 'Cuerpo de Salvamento Acuático'),
(29, 'Servicio de Emergencia Sanitaria'),
(30, 'Unidad de Respuesta de Crisis');

-- Insertar datos en la tabla emergency
INSERT INTO Emergency (id, id_institution, state, name, description, responsible_coordinator, latitude, longitude, geom) VALUES
(1, 1, true, 'Accidente de tráfico', 'Choque entre dos vehículos en la autopista', 'Laura Gómez', -33.4378, -70.6504, ST_SetSRID(ST_MakePoint(-70.6504, -33.4378), 4326)),
(2, 2, false, 'Inundación', 'Desbordamiento del río debido a las fuertes lluvias', 'Roberto Martín', -39.8196, -73.2459, ST_SetSRID(ST_MakePoint(-73.2459, -39.8196), 4326)),
(3, 3, true, 'Incendio en fábrica', 'Se ha declarado un incendio en una fábrica de productos químicos', 'Javier Pérez', -36.8270, -73.0503, ST_SetSRID(ST_MakePoint(-73.0503, -36.8270), 4326)),
(4, 4, true, 'Deslizamiento de tierra', 'Un deslizamiento de tierra ha bloqueado una carretera importante', 'María López', -29.9027, -71.2519, ST_SetSRID(ST_MakePoint(-71.2519, -29.9027), 4326)),
(5, 1, false, 'Fuga de gas', 'Fuga de gas en una vivienda', 'Juan Rodríguez', -33.0472, -71.6127, ST_SetSRID(ST_MakePoint(-71.6127, -33.0472), 4326)),
(6, 2, true, 'Emergencia médica', 'Persona con paro cardíaco en la vía pública', 'Ana Martínez', -53.1625, -70.9078, ST_SetSRID(ST_MakePoint(-70.9078, -53.1625), 4326)),
(7, 3, true, 'Accidente de trabajo', 'Caida de trabajador desde altura en construcción', 'José Gómez', -27.3668, -70.3314, ST_SetSRID(ST_MakePoint(-70.3314, -27.3668), 4326)),
(8, 4, false, 'Tormenta eléctrica', 'Tormenta eléctrica con fuertes vientos en la zona', 'Sara Pérez', -41.4717, -72.9364, ST_SetSRID(ST_MakePoint(-72.9364, -41.4717), 4326)),
(9, 1, true, 'Accidente de autobús', 'Volcadura de autobús en carretera principal', 'Luis Martín', -37.4676, -72.3517, ST_SetSRID(ST_MakePoint(-72.3517, -37.4676), 4326)),
(10, 2, false, 'Avalancha', 'Avalancha en zona montañosa', 'Elena Gómez', -22.4571, -68.9243, ST_SetSRID(ST_MakePoint(-68.9243, -22.4571), 4326)),
(11, 3, true, 'Explosión en edificio', 'Explosión en edificio residencial', 'Carlos Martínez', -34.1801, -70.6860, ST_SetSRID(ST_MakePoint(-70.6860, -34.1801), 4326)),
(12, 4, false, 'Tornado', 'Tornado con posibilidad de daños estructurales', 'Laura Pérez', -35.4264, -71.6554, ST_SetSRID(ST_MakePoint(-71.6554, -35.4264), 4326)),
(13, 1, true, 'Incidente químico', 'Fuga de productos químicos en laboratorio industrial', 'Miguel Gómez', -33.6017, -70.5723, ST_SetSRID(ST_MakePoint(-70.5723, -33.6017), 4326)),
(14, 2, false, 'Ingreso masivo por intoxicación', 'Ingreso masivo de personas por intoxicación alimentaria', 'Sofía Martínez', -36.6009, -72.1060, ST_SetSRID(ST_MakePoint(-72.1060, -36.6009), 4326)),
(15, 3, true, 'Colapso de edificio', 'Colapso de edificio en zona residencial', 'Daniel Gómez', -38.7359, -72.5904, ST_SetSRID(ST_MakePoint(-72.5904, -38.7359), 4326)),
(16, 4, false, 'Incendio forestal', 'Incendio forestal en área natural protegida', 'Luisa Pérez', -42.4826, -73.7622, ST_SetSRID(ST_MakePoint(-73.7622, -42.4826), 4326)),
(17, 1, true, 'Inundación urbana', 'Inundación en zona urbana debido a fuertes lluvias', 'José Martínez', -33.0458, -71.6145, ST_SetSRID(ST_MakePoint(-71.6145, -33.0458), 4326)),
(18, 2, false, 'Explosión de gas', 'Explosión por acumulación de gas en edificio residencial', 'Ana Gómez', -33.4503, -70.6570, ST_SetSRID(ST_MakePoint(-70.6570, -33.4503), 4326)),
(19, 3, true, 'Derrumbe de edificio', 'Derrumbe parcial de un edificio en construcción', 'Carlos Pérez', -33.4648, -70.6604, ST_SetSRID(ST_MakePoint(-70.6604, -33.4648), 4326)),
(20, 4, false, 'Sismo', 'Sismo de alta intensidad con daños estructurales', 'Sara Martínez', -36.8180, -73.0444, ST_SetSRID(ST_MakePoint(-73.0444, -36.8180), 4326)),
(21, 1, true, 'Accidente vehicular múltiple', 'Choque múltiple en autopista debido a la niebla', 'Miguel Pérez', -32.7760, -70.7200, ST_SetSRID(ST_MakePoint(-70.7200, -32.7760), 4326)),
(22, 2, false, 'Incendio en zona industrial', 'Incendio en fábrica de productos químicos', 'María Gómez', -20.2123, -70.1485, ST_SetSRID(ST_MakePoint(-70.1485, -20.2123), 4326)),
(23, 3, true, 'Derrame de productos tóxicos', 'Derrame de productos químicos en carretera principal', 'David Pérez', -38.2385, -72.3383, ST_SetSRID(ST_MakePoint(-72.3383, -38.2385), 4326)),
(24, 4, false, 'Explosión de transformador', 'Explosión de transformador eléctrico en barrio residencial', 'Laura Gómez', -33.0245, -71.5518, ST_SetSRID(ST_MakePoint(-71.5518, -33.0245), 4326)),
(25, 1, true, 'Inundación costera', 'Inundación en zona costera debido a marejadas', 'Luis Pérez', -23.6560, -70.3975, ST_SetSRID(ST_MakePoint(-70.3975, -23.6560), 4326)),
(26, 2, false, 'Incendio en almacén', 'Incendio en almacén de productos inflamables', 'Ana Martínez', -40.5726, -73.1325, ST_SetSRID(ST_MakePoint(-73.1325, -40.5726), 4326)),
(27, 3, true, 'Naufragio', 'Naufragio de embarcación en alta mar', 'Carlos Gómez', -43.1167, -73.6167, ST_SetSRID(ST_MakePoint(-73.6167, -43.1167), 4326)),
(28, 4, false, 'Tsunami', 'Alerta de tsunami tras sismo en océano', 'Sara Pérez', -18.4783, -70.3126, ST_SetSRID(ST_MakePoint(-70.3126, -18.4783), 4326)),
(29, 1, true, 'Inundación rural', 'Inundación en zona rural por desborde de ríos', 'Miguel Gómez', -35.3318, -72.4223, ST_SetSRID(ST_MakePoint(-72.4223, -35.3318), 4326)),
(30, 2, false, 'Incendio forestal', 'Incendio forestal en área protegida', 'María Gómez', -39.2820, -71.9818, ST_SetSRID(ST_MakePoint(-71.9818, -39.2820), 4326));


-- Insertar datos en la tabla task_state
INSERT INTO Task_State (id, state) VALUES
(1, FALSE),
(2, TRUE),
(3, FALSE),
(4, FALSE),
(5, FALSE),
(6, TRUE),
(7, TRUE),
(8, TRUE),
(9, TRUE),
(10, FALSE),
(11, TRUE),
(12, FALSE),
(13, TRUE),
(14, TRUE),
(15, TRUE),
(16, TRUE),
(17, TRUE),
(18, FALSE),
(19, FALSE),
(20, FALSE),
(21, FALSE),
(22, FALSE),
(23, TRUE),
(24, FALSE),
(25, TRUE),
(26, TRUE),
(27, TRUE),
(28, TRUE),
(29, FALSE),
(30, FALSE);

-- Insertar datos en la tabla task
INSERT INTO Task (id, name_task, description, id_emergency, id_task_state) VALUES
(1, 'Evacuación de heridos', 'Evacuar a los heridos del lugar del accidente', 1, 1),
(2, 'Control de inundación', 'Tomar medidas para controlar la inundación', 2, 2),
(3, 'Control de incendio', 'Apagar el incendio y prevenir su propagación', 3, 1),
(4, 'Despeje de carretera', 'Despejar la carretera bloqueada por el deslizamiento de tierra', 4, 1),
(5, 'Reparación de fuga de gas', 'Reparar la fuga de gas y garantizar la seguridad de la zona', 5, 2),
(6, 'Rescate acuático', 'Rescatar a personas en peligro en el agua', 6, 1),
(7, 'Atención médica de emergencia', 'Brindar atención médica rápida en situaciones de emergencia', 7, 2),
(8, 'Control de multitudes', 'Controlar grandes grupos de personas en eventos de emergencia', 8, 1),
(9, 'Operaciones de salvamento', 'Realizar operaciones de rescate en situaciones de peligro', 9, 2),
(10, 'Manejo de desastres', 'Coordinar y gestionar recursos en situaciones de desastre', 10, 1),
(11, 'Coordinación de emergencias', 'Coordinar las acciones de respuesta en situaciones de emergencia', 11, 2),
(12, 'Evacuación de emergencia', 'Realizar evacuaciones rápidas y seguras en caso de emergencia', 12, 1),
(13, 'Descontaminación química', 'Llevar a cabo la descontaminación de áreas afectadas por sustancias químicas', 13, 2),
(14, 'Intervención en crisis', 'Intervenir en situaciones de crisis para garantizar la seguridad', 14, 1),
(15, 'Seguridad en emergencias', 'Garantizar la seguridad del personal y los afectados durante emergencias', 15, 2),
(16, 'Rescate en zonas de difícil acceso', 'Rescate de personas atrapadas en lugares de difícil acceso', 16, 1),
(17, 'Apoyo logístico', 'Brindar apoyo logístico a los equipos de emergencia', 17, 2),
(18, 'Asistencia psicológica', 'Brindar apoyo psicológico a las víctimas de emergencias', 18, 1),
(19, 'Comunicación con medios', 'Manejar la comunicación con los medios durante una emergencia', 19, 2),
(20, 'Coordinación de voluntarios', 'Coordinar las actividades de los voluntarios durante una emergencia', 20, 1),
(21, 'Seguimiento y evaluación', 'Realizar seguimiento y evaluación de las acciones de emergencia', 21, 2),
(22, 'Supervisión de refugios', 'Supervisar y gestionar refugios para personas afectadas por emergencias', 22, 1),
(23, 'Atención a poblaciones vulnerables', 'Brindar atención especializada a poblaciones vulnerables durante emergencias', 23, 2),
(24, 'Manejo de animales', 'Brindar asistencia y cuidado a animales afectados por emergencias', 24, 1),
(25, 'Establecimiento de perímetros de seguridad', 'Establecer y mantener perímetros de seguridad en áreas afectadas', 25, 2),
(26, 'Supervisión de suministros', 'Supervisar y gestionar suministros médicos y de emergencia', 26, 1),
(27, 'Coordinación de evacuaciones', 'Coordinar y facilitar evacuaciones en caso de emergencia', 27, 2),
(28, 'Gestión de recursos humanos', 'Gestionar el personal y los recursos humanos durante emergencias', 28, 1),
(29, 'Manejo de información de emergencia', 'Recopilar, analizar y difundir información relevante durante emergencias', 29, 2),
(30, 'Planificación de respuesta ante emergencias', 'Elaborar y coordinar planes de respuesta ante diferentes tipos de emergencias', 30, 1);

-- Insertar datos en la tabla volunteer
INSERT INTO Volunteer (id, availability, name, password, age, latitude, longitude, geom) VALUES
(1, true, 'Juan Pérez', 'contraseña123', 25, -33.4569, -70.6483, ST_SetSRID(ST_MakePoint(-70.6483, -33.4569), 4326)),
(2, true, 'María García', 'clave456', 30, -39.8142, -73.2450, ST_SetSRID(ST_MakePoint(-73.2450, -39.8142), 4326)),
(3, false, 'Carlos Martínez', 'segura789', 28, -36.8281, -73.0503, ST_SetSRID(ST_MakePoint(-73.0503, -36.8281), 4326)),
(4, true, 'Ana López', 'secreta123', 35, -29.9533, -71.3436, ST_SetSRID(ST_MakePoint(-71.3436, -29.9533), 4326)),
(5, false, 'Luis Rodríguez', '123abc', 40, -33.0472, -71.6127, ST_SetSRID(ST_MakePoint(-71.6127, -33.0472), 4326)),
(6, true, 'Laura Martínez', 'contraseña456', 29, -53.1625, -70.9078, ST_SetSRID(ST_MakePoint(-70.9078, -53.1625), 4326)),
(7, true, 'Pedro Gómez', 'clave789', 32, -27.3668, -70.3314, ST_SetSRID(ST_MakePoint(-70.3314, -27.3668), 4326)),
(8, false, 'Sofía Hernández', 'segura123', 27, -41.4689, -72.9420, ST_SetSRID(ST_MakePoint(-72.9420, -41.4689), 4326)),
(9, true, 'Jorge Ruiz', 'secreta456', 34, -37.6091, -72.4003, ST_SetSRID(ST_MakePoint(-72.4003, -37.6091), 4326)),
(10, false, 'Carmen Sánchez', '123xyz', 31, -22.9087, -68.1997, ST_SetSRID(ST_MakePoint(-68.1997, -22.9087), 4326)),
(11, true, 'Miguel Pérez', 'contraseña789', 26, -34.1696, -70.7406, ST_SetSRID(ST_MakePoint(-70.7406, -34.1696), 4326)),
(12, true, 'Andrea López', 'clave123', 33, -35.4264, -71.6554, ST_SetSRID(ST_MakePoint(-71.6554, -35.4264), 4326)),
(13, false, 'Daniel García', 'segura456', 28, -33.6097, -70.5758, ST_SetSRID(ST_MakePoint(-70.5758, -33.6097), 4326)),
(14, true, 'Paula Martínez', 'secreta789', 29, -36.8201, -73.0440, ST_SetSRID(ST_MakePoint(-73.0440, -36.8201), 4326)),
(15, false, 'David Rodríguez', '123def', 36, -38.7359, -72.5904, ST_SetSRID(ST_MakePoint(-72.5904, -38.7359), 4326)),
(16, true, 'Lucía Gómez', 'contraseña987', 31, -42.4826, -73.7622, ST_SetSRID(ST_MakePoint(-73.7622, -42.4826), 4326)),
(17, true, 'Diego Hernández', 'clave321', 28, -33.0480, -71.6127, ST_SetSRID(ST_MakePoint(-71.6127, -33.0480), 4326)),
(18, false, 'Valeria Ruiz', 'segura654', 29, -33.4500, -70.6667, ST_SetSRID(ST_MakePoint(-70.6667, -33.4500), 4326)),
(19, true, 'Santiago Sánchez', 'secreta987', 30, -33.4660, -70.6506, ST_SetSRID(ST_MakePoint(-70.6506, -33.4660), 4326)),
(20, false, 'Natalia Pérez', '123456', 27, -36.8131, -73.0522, ST_SetSRID(ST_MakePoint(-73.0522, -36.8131), 4326)),
(21, true, 'Elena López', 'contraseña654', 32, -32.7760, -70.7200, ST_SetSRID(ST_MakePoint(-70.7200, -32.7760), 4326)),
(22, true, 'Alejandro García', 'clave987', 29, -20.2140, -70.1524, ST_SetSRID(ST_MakePoint(-70.1524, -20.2140), 4326)),
(23, false, 'Marina Martínez', 'segura321', 28, -38.2385, -72.3383, ST_SetSRID(ST_MakePoint(-72.3383, -38.2385), 4326)),
(24, true, 'Hugo Gómez', 'secreta654', 33, -33.0245, -71.5518, ST_SetSRID(ST_MakePoint(-71.5518, -33.0245), 4326)),
(25, false, 'Camila Hernández', '123789', 30, -23.6560, -70.3975, ST_SetSRID(ST_MakePoint(-70.3975, -23.6560), 4326)),
(26, true, 'Isaac Ruiz', 'contraseña321', 29, -40.5726, -73.1325, ST_SetSRID(ST_MakePoint(-73.1325, -40.5726), 4326)),
(27, true, 'Adriana Sánchez', 'clave654', 28, -43.1167, -73.6167, ST_SetSRID(ST_MakePoint(-73.6167, -43.1167), 4326)),
(28, false, 'Roberto Pérez', 'segura987', 31, -18.4783, -70.3126, ST_SetSRID(ST_MakePoint(-70.3126, -18.4783), 4326)),
(29, true, 'Daniela López', 'secreta321', 26, -35.4310, -72.4202, ST_SetSRID(ST_MakePoint(-72.4202, -35.4310), 4326)),
(30, false, 'Juan Pablo García', '123321', 33, -39.2820, -71.9818, ST_SetSRID(ST_MakePoint(-71.9818, -39.2820), 4326));

-- Insertar datos en la tabla ranking
INSERT INTO Ranking (id, id_task, id_volunteer, level_ranking) VALUES
(1, 1, 1, 5),
(2, 2, 2, 4),
(3, 3, 3, 3),
(4, 4, 4, 2),
(5, 5, 5, 1),
(6, 1, 2, 4),
(7, 2, 3, 3),
(8, 3, 4, 2),
(9, 4, 5, 1),
(10, 5, 1, 5),
(11, 1, 3, 3),
(12, 2, 4, 2),
(13, 3, 5, 1),
(14, 4, 1, 5),
(15, 5, 2, 4),
(16, 1, 4, 2),
(17, 2, 5, 1),
(18, 3, 1, 5),
(19, 4, 2, 4),
(20, 5, 3, 3),
(21, 1, 5, 1),
(22, 2, 1, 5),
(23, 3, 2, 4),
(24, 4, 3, 3),
(25, 5, 4, 2),
(26, 1, 1, 5),
(27, 2, 2, 4),
(28, 3, 3, 3),
(29, 4, 4, 2),
(30, 5, 5, 1);

-- Insertar datos en la tabla ability
INSERT INTO Ability (id, name) VALUES
(1, 'Primeros Auxilios'),
(2, 'Manejo de Extintores'),
(3, 'Rescate Acuático'),
(4, 'Manejo de Crisis'),
(5, 'Soporte Vital Básico'),
(6, 'Búsqueda y Rescate'),
(7, 'Atención Médica de Emergencia'),
(8, 'Control de Multitudes'),
(9, 'Operaciones de Salvamento'),
(10, 'Manejo de Desastres'),
(11, 'Coordinación de Emergencias'),
(12, 'Evacuación de Emergencia'),
(13, 'Descontaminación Química'),
(14, 'Intervención en Crisis'),
(15, 'Seguridad en Emergencias'),
(16, 'Rescate en Alturas'),
(17, 'Manejo de Equipos Pesados'),
(18, 'Manejo de Crisis Psicológica'),
(19, 'Desarrollo de Planes de Emergencia'),
(20, 'Atención Prehospitalaria'),
(21, 'Manejo de Residuos Peligrosos'),
(22, 'Manejo de Explosivos'),
(23, 'Natación Avanzada'),
(24, 'Manejo de Vehículos de Emergencia'),
(25, 'Rescate Canino'),
(26, 'Supervivencia en el Agua'),
(27, 'Manejo de Herramientas de Rescate'),
(28, 'Comunicación en Crisis'),
(29, 'Coordinación de Equipos de Rescate'),
(30, 'Manejo de Equipos de Comunicaciones');

-- Insertar datos en la tabla vol_ability
INSERT INTO Vol_Ability (id, id_volunteer, id_ability) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 3),
(5, 3, 2),
(6, 3, 4),
(7, 4, 1),
(8, 4, 3),
(9, 5, 2),
(10, 5, 4),
(11, 6, 1),
(12, 6, 3),
(13, 7, 2),
(14, 7, 4),
(15, 8, 1),
(16, 8, 2),
(17, 9, 3),
(18, 9, 4),
(19, 10, 1),
(20, 10, 3),
(21, 11, 2),
(22, 11, 4),
(23, 12, 1),
(24, 12, 2),
(25, 13, 3),
(26, 13, 4),
(27, 14, 1),
(28, 14, 2),
(29, 15, 3),
(30, 15, 4);

-- Insertar datos en la tabla eme_ability
INSERT INTO Eme_Ability (id, id_emergency, id_ability) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 1),
(17, 9, 2),
(18, 9, 3),
(19, 10, 4),
(20, 10, 5),
(21, 11, 6),
(22, 11, 7),
(23, 12, 8),
(24, 12, 9),
(25, 13, 10),
(26, 13, 11),
(27, 14, 12),
(28, 14, 13),
(29, 15, 14),
(30, 15, 15);

-- Insertar datos en la tabla task_ability
INSERT INTO Task_Ability (id, id_eme_ability, id_task) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 1, 2),
(17, 2, 3),
(18, 3, 4),
(19, 4, 5),
(20, 5, 6),
(21, 6, 7),
(22, 7, 8),
(23, 8, 9),
(24, 9, 10),
(25, 10, 11),
(26, 11, 12),
(27, 12, 13),
(28, 13, 14),
(29, 14, 15),
(30, 15, 1);