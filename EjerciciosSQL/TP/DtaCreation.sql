-- Active: 1714513579081@@dpg-co7iljkf7o1s738hnqc0-a.oregon-postgres.render.com@5432@trabajobasededatos@public
insert into vacunas ( nombre ,N_total_dosis ,Tratamiento,Duracion_meses,Especie,Coste) 
values 
('Vacuna bivalente',1,'Moquillo y Parvovirus',99,1, 3500),
('Vacuna polivalente',3,'Moquillo canino,Parvovirus,Hepatitis Infecciona C, Leptospitosis,Parainfluenza',12,1,5000),
('Vacuna AntiRabica',1,'Antirabica',12,1,4500),
('Vacuna trivalente',3,'Panleucopenia,rinotraqueitis,calicivirus felino',12,2,3500),
('Vacuna para Leucemia felina',2,'Leucemia felina',12,2,5000),
('Vacuna AntiRabica',1,'Rabia felina',12,2,4500),
('vacuna de la mixomatosis',1,'Mixomatosis',12,4,5500),
('Vacuna de la fiebre hemorrágica',1,'Hemorragia vírica',12,4,5500),
('Vacuna Gumboro',1,'Bursitis infecciosa',99,3,6000),
('Vacuna contra la Viruela Aviar',1,'Viruela aviar',99,3,6000)
;

insert into especies (nombre)
values
('canina'),
('felina'),
('ave'),
('Oryctolagus cuniculus');

insert into cuidadores (nombre,telefono,email)
VALUES
('Julian Gomez','1145679875','julian.gomez@outlook.com'),
('Juliana Fernandez','1133219899','julianafernandez@outlook.com'),
('Tomás Kuras','1147779832','tomaskuras@outlook.com'),
('Sofia Gala','1145671875','sofiagala@gmail.com'),
('Nicola Constantino','1145459128','nicola.constantino@outlook.com'),
('Francisco Gomez','1141179855','panchogomez94@outlook.com'),
('Romina Saravia','1145672231','romina.saravia@gmail.com'),
('Roman Riquelme','1145672491','riquelme.roman@gmail.com'),
('Sol Chiang','1145673401','sol.chiang92@outlook.com'),
('Marisol García','1149972669','marisol.99.garcia@gmail.com'),
('Juliana Gomez','1145673375','julianagomez@outlook.com'),
('Yolanda Fernandez','1133211299','yolandafernandez@outlook.com'),
('Tomás Cornet','1147279832','tomas.cornet@outlook.com'),
('Sofia Manero','1145671875','sofiamanero91@gmail.com'),
('Nicolas Saenz','1145469128','nico.saenz@outlook.com'),
('Roberto Ratamazik','1141279855','elratamazik86@outlook.com'),
('Rocio Guirao','1145672239','rochi.guirao@gmail.com'),
('Ruben Mazik','1145672497','rube.mazik88@gmail.com'),
('Sol Alberdi','1145673422','sol.alberdi@outlook.com'),
('Guillermo Nescao','1149972369','guillote.nescao82@gmail.com'),
('Norberto Ratamazik','1135179855','elratamazik86@outlook.com'),
('Romina Guirao','1145692231','romi.guirao@gmail.com'),
('Esteban Mazik','1141672491','rube.mazik88@gmail.com'),
('Maria Soledad Alberdi','1145673201','m.s.alberdi@outlook.com'),
('Maria Nescao','1143372669','maria.nescao82@gmail.com')
;

insert into animales (nombre,edad,especie,raza,peso,cuidador,genero)
values
('Odin',9,1,'Malamute de Alaska',21.2, 1,'M'),
('Loki',8,1,'Husky siberiano',16.2, 1,'M'),
('Loki',8,1,'Husky siberiano',18.2, 1,'M'),
('Chipi',3,4,'Conejo Polaco',1.5, 2,'H'),
('Ariel',3,4,'Conejo Polaco',1.2, 2,'H'),
('Toto',4,4,'Conejo Polaco',2.2, 2,'M'),
('Luli',2,4,'Conejo Polaco',1.8, 2,'H'),
('Tata',3,4,'Conejo holandés enano',1.5, 3,'H'),
('Yapa',3,4,'Conejo holandés enano',1.2, 3,'H'),
('Pipa',4,4,'Conejo de Angora',3.5, 4,'M'),
('Shubi',2,4,'English Lop',5, 5,'H'),
('Falucho',3,1,'Mestizo',12.2, 6,'M'),
('Pochoclo',7,1,'Mestizo',9.2, 7,'M'),
('Bowie',5,1,'Mestizo',6.2, 8,'M'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Pipi',1,3,'Serinus canaria',0.2, 9,'H'),
('Vivi',1,3,'gallina doméstica',1.5, 10,'H'),
('Paola',1,3,'gallina doméstica',1.5, 10,'H'),
('Grachi',9,1,'Malamute de Alaska',19.8, 11,'H'),
('Topito',8,1,'Husky siberiano',16.2, 12,'M'),
('Luly',8,1,'Husky siberiano',18.2, 13,'H'),
('Uma',3,3,'Siamés',2.5, 14,'H'),
('Luigi',3,3,'Siamés',2.8, 15,'M'),
('Romeo',4,3,'Siamés',4.2, 16,'M'),
('Tommy',8,1,'Metstizo',8.2, 17,'M'),
('Tiger',3,3,'Gato persa',3.5, 18,'M'),
('Mia',3,3,'Gato esfinge',3.5, 19,'H'),
('Nala',4,3,'Gato esfinge',3.2, 20,'H'),
('Ponpon',3,4,'Conejo Polaco',1.5, 21,'H'),
('Ani',3,4,'Conejo Polaco',1.2, 21,'H'),
('Topo',4,4,'Conejo Polaco',2.2, 21,'M'),
('Luly',2,4,'Conejo Polaco',1.8, 21,'H'),
('Mae',3,4,'Conejo holandés enano',1.5, 22,'H'),
('Chispita',3,4,'Conejo holandés enano',1.2, 22,'H'),
('Pancho',4,4,'Conejo de Angora',3.5, 23,'M'),
('Zulu',2,4,'English Lop',5, 23,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.2, 24,'H'),
('Raffa',3,1,'Mestizo',12.2, 25,'M'),
('Pepe',7,1,'Mestizo',9.2, 25,'M')
;
