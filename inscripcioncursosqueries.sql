INSERT INTO estudiantes (nombre, edad)
VALUES ('Francisca Rivas', 23),
	   ('Maximiliano Matamala', 19),
       ('Miguel Dinares', 30),
       ('Ayline Arratia', 19),
       ('Valentina Mendez', 20);
       
INSERT INTO cursos (nombre, duracion)
VALUES ('Fundamentos De La Web', '3 meses y 2 semanas'),
       ('Python', '5 semanas'),
       ('Road To Inmortal Valorant', '5 meses y 1 semana'),
       ('Ruby', '3 meses');
       
INSERT INTO inscripciones (estudiantes_id_estudiante, cursos_id_curso)
values (1, 1),
	  (1, 2),
      (2, 2),
      (2, 1),
      (3, 1),
      (3, 3),
      (4, 1),
      (4, 2),
      (4, 3),
      (4, 4);
      
SELECT *
FROM inscripciones;
      
SELECT estudiantes.nombre, inscripciones.*, cursos.nombre
FROM estudiantes JOIN inscripciones
ON id_estudiante= estudiantes_id_estudiante
JOIN cursos
ON id_curso=cursos_id_curso;
SELECT estudiantes.nombre
FROM estudiantes JOIN inscripciones
ON id_estudiante= estudiantes_id_estudiante
JOIN cursos
ON id_curso=cursos_id_curso
WHERE cursos.nombre='Python';
SELECT cursos.nombre
FROM estudiantes JOIN inscripciones
ON id_estudiante= estudiantes_id_estudiante
JOIN cursos
ON id_curso=cursos_id_curso
WHERE estudiantes.nombre='Francisca Rivas';
SELECT cursos.nombre, count(inscripciones.estudiantes_id_estudiante) AS numero_inscripciones
FROM cursos JOIN inscripciones
ON id_curso=cursos_id_curso
group by cursos.nombre;
SELECT estudiantes.nombre
FROM estudiantes LEFT JOIN inscripciones
ON estudiantes.id_estudiante=inscripciones.estudiantes_id_estudiante
WHERE inscripciones.estudiantes_id_estudiante is null;