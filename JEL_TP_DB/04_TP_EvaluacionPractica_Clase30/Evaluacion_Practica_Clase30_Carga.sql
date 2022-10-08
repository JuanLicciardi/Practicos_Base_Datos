
 /* SELECCION DE TABLA USUARIO Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.usuarios;

 /* CARGA DE 10 DATOS DE TABLA USUARIOS - CARGA NECESARIA PARA CARGAR NOTAS CON LA QUE SE ENCUENTRA RELACIONADA*/
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN ALBERTO", "ALVAREZ", "ja@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN BAUTISTA", "BARRIA", "jb@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN CARLOS", "CARMINATI", "jc@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN DAMIAN", "DIAZ", "jd@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN EMILIO", "ESTEVEZ", "je@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN FERNANDO", "FERNANDEZ", "jf@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN GUSTAVO", "GUTIERREZ", "jg@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN HECTOR", "HERNANDEZ", "jh@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN IGNACIO", "IBAÑEZ", "ji@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN JOSE", "JUAREZ", "jj@gmail.com");


 /* SELECCION DE TABLA CATEGORIAS Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.categorias;

/* CARGA DE 10 DATOS DE TABLA CATEGORIAS - CARGA NECESARIA PARA CARGAR NOTAS CON LA QUE SE ENCUENTRA RELACIONADA*/
INSERT INTO categorias (`categoria`) values ('Institucional');
INSERT INTO categorias (`categoria`) values ('Economia');
INSERT INTO categorias (`categoria`) values ('Policiales');
INSERT INTO categorias (`categoria`) values ('Salud');
INSERT INTO categorias (`categoria`) values ('Educación');
INSERT INTO categorias (`categoria`) values ('Interes General');
INSERT INTO categorias (`categoria`) values ('Cultura');
INSERT INTO categorias (`categoria`) values ('Internacional');
INSERT INTO categorias (`categoria`) values ('Deporte');
INSERT INTO categorias (`categoria`) values ('Politica');


 /* SELECCION DE TABLA NOTAS Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.notas;

 /* CARGA DE 10 DATOS DE TABLA NOTAS - YA SE ENCUENTRAN CARGADAS LAS TABLAS CATEGORIAS Y USUARIOS CON LA QUE SE ENCUENTRA RELACIONADA*/
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'EXAMEN INGRESO','Descripción Bla bla bla bla bla', '2','2');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'ECONOMIA','Descripción Bla bla bla bla bla', '3','3');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'POLICIAL','Descripción Bla bla bla bla bla', '4','4');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'HOSPITAL','Descripción Bla bla bla bla bla', '6','5');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'ESCUELA','Descripción Bla bla bla bla bla', '5','6');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'FORESTACION','Descripción Bla bla bla bla bla', '7','7');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'TEATRO ARMONIA','Descripción Bla bla bla bla bla', '8','8');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'DESCUBRIMIENTO EN EUROPA','Descripción Bla bla bla bla bla', '9','9');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'FINAL DE TENIS LOCAL','Descripción Bla bla bla bla bla', '10','10');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`, `categoria_id`) values ( '2022-10-01', '2022-10-05','1', 'ELECCIONES','Descripción Bla bla bla bla bla', '1','11');









