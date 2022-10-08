
 /* SELECCION DE TABLA USUARIO Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.usuarios;

 /* CARGA DE 10 DATOS DE TABLA USUARIO - CARGA NECESARIA PARA CARGAR NOTAS CON LA QUE SE ENCUENTRA RELACIONADA*/
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "RAMIREZ", "jr@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "ALVAREZ", "ja@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "BARRIA", "jb@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "CARMINATI", "jc@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "DIAZ", "jd@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "ENRIQUE", "je@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "FERNANDEZ", "jf@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "GUTIERREZ", "jg@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "HERNANDEZ", "jh@gmail.com");
INSERT INTO usuarios (nombre, apellido, email) values ("JUAN", "IBAÑEZ", "ji@gmail.com");

 /* SELECCION DE TABLA NOTAS Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.notas;

 /* CARGA DE 10 DATOS DE TABLA NOTAS - CARGA NECESARIA PARA CARGAR CATEGORIAS CON LA QUE SE ENCUENTRA RELACIONADA*/
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'Examen Ingreso','Descripción Bla bla bla bla bla', '2');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'ECONOMIA','Descripción Bla bla bla bla bla', '3');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'POLICIAL','Descripción Bla bla bla bla bla', '4');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'HOSPITAL','Descripción Bla bla bla bla bla', '5');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'ESCUELA','Descripción Bla bla bla bla bla', '6');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'FORESTACION','Descripción Bla bla bla bla bla', '7');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'TEATRO ARMONIA','Descripción Bla bla bla bla bla', '8');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'DESCUBRIMIENTO EN EUROPA','Descripción Bla bla bla bla bla', '9');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'FINAL DE TENIS LOCAL','Descripción Bla bla bla bla bla', '10');
INSERT INTO notas (`fecha_creacion`, `fecha_modificacion`, `eliminacion`,`titulo`, `descripcion`, `usuario_id`) values ( '2022-10-01', '2022-10-05','1', 'ELECCIONES','Descripción Bla bla bla bla bla', '1');


 /* SELECCION DE TABLA CATEGORIAS Y MUESTRA TODOS LOS DATOS*/

SELECT * 
FROM relacion_notas_categorias;


 /* SELECCION DE TABLA CATEGORIAS Y MUESTRA TODOS LOS DATOS*/
SELECT * 
FROM db_clase30_entregable.categorias;

INSERT INTO categorias (`categoria`,`notas_id`) values ('Educación','1');





