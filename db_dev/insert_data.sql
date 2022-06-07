USE PORTFOLIO ;


INSERT INTO PERSONA (DNI,Nombre,Apellido,FechaNacimiento,Titulo)
VALUES (31258778,"PABLO","LUPO",'1984-11-17',"Desarrollador Full Stack");
INSERT INTO DOMICILIO (Persona_DNI,nombreCalle,numero,localidad,provincia)
VALUES (31258778,"Florida",3460,"Lanus Oeste","Buenos Aires");
INSERT INTO EXPERIENCIA_LABORAL (Persona_DNI,fechaInicio,fechaFinal,nombreEmpresa,tituloPuesto,descripcionPuesto)
VALUES (31258778,'2010-11-11','1984-11-17',"AUTOTROL SA","Tecnico Programador","Programador SCADA HMI ssr");
INSERT INTO EXPERIENCIA_LABORAL (Persona_DNI,fechaInicio,nombreEmpresa,tituloPuesto,descripcionPuesto)
VALUES (31258778,'2022-1-22',"GLOBANT","Devops","Testing de aplicaciones");
INSERT INTO EDUCACION (Persona_DNI,nombreInstitucion,carrera,fechaInicio,fechaFinal)
VALUES (31258778,"UBA","Ingenieria Electronica",'2003-01-20','2010-07-20');
INSERT INTO EDUCACION (Persona_DNI,nombreInstitucion,carrera,fechaInicio)
VALUES (31258778,"Undav","Ingenieria Informatica",'2017-01-20');

INSERT INTO TECNOLOGIA (Persona_DNI,nombre,dominio) VALUES (31258778,"JAVA",67.5);
INSERT INTO TECNOLOGIA (Persona_DNI,nombre,dominio) VALUES (31258778,"Python",87.5);

INSERT INTO PROYECTO (Persona_DNI,nombre,fechaDeRealizacion,descripcion,link)
VALUES (31258778,"CUBESAT",'2022-11-11',"CUBESAT UNDAV - OBC Nanosatelites","http://milink.com");
INSERT INTO PROYECTO (Persona_DNI,nombre,fechaDeRealizacion,descripcion,link)
VALUES (31258778,"MAPEO ECONOMIA POPULAR",'2022-03-07',"Proyecto de TSC5 - UNDAV","http://otro-milink.com");

INSERT INTO USUARIOS (Persona_DNI,nombreUser,passUser) VALUES (31258778,"admin","admin");