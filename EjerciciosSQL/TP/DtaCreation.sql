-- Active: 1714513579081@@dpg-co7iljkf7o1s738hnqc0-a.oregon-postgres.render.com@5432@trabajobasededatos@public

insert into especies (nombre)
values
('canina'),
('felina'),
('ave'),
('Oryctolagus cuniculus');

insert into vacunas ( nombre ,N_total_dosis ,Tratamiento,Duracion_meses,Especie,Coste) 
values 
('Vacuna bivalente',1,'Moquillo y Parvovirus',0,1, 3500),
('Vacuna polivalente',3,'Moquillo canino,Parvovirus,Hepatitis Infecciona C, Leptospitosis,Parainfluenza',12,1,5000),
('Vacuna AntiRabica',1,'Antirabica',12,1,4500),
('Vacuna trivalente',3,'Panleucopenia,rinotraqueitis,calicivirus felino',12,2,3500),
('Vacuna para Leucemia felina',2,'Leucemia felina',12,2,5000),
('Vacuna AntiRabica',1,'Rabia felina',12,2,4500),
('vacuna de la mixomatosis',1,'Mixomatosis',12,4,5500),
('Vacuna de la fiebre hemorrágica',1,'Hemorragia vírica',12,4,5500),
('Vacuna Gumboro',1,'Bursitis infecciosa',0,3,6000),
('Vacuna contra la Viruela Aviar',1,'Viruela aviar',0,3,6000)
;


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
('Maria Nescao','1143372669','maria.nescao82@gmail.com'),
('Ruben Ratamazik','1135279855','rube.ratamazik@outlook.com'),
('Rocio Guines','1145692131','rocio.guines@gmail.com'),
('Esteban Trebuq','1141672391','esteban.trebuq88@gmail.com'),
('Maria Valenzuela Alberdi','1145173201','m.v.alberdi@outlook.com'),
('Miguel Angel Nescao','1143373669','migue.a.nescao82@gmail.com'),
('Matias Velez','1145672339','matias.v@gmail.com'),
('Julieta Piparo','1145672499','juli.piparo@gmail.com'),
('Ayelen Samaniego','1145673402','aye.samaniego@outlook.com'),
('Marta Lamarta','1149972679','lamarta99@gmail.com'),
('Jose Garcia Lorca','1145673379','j.g.lorca83@outlook.com'),
('Martin Ratamazik','1135279855','m.ratamazik@outlook.com'),
('Ramiro Guines','1145692131','r.guines@gmail.com'),
('Guido Trebuq','1141672391','guido.trebuq88@gmail.com'),
('Martha Alberdi','1145173201','m.alberdi@outlook.com'),
('Angel García','1143373669','angel.garcia@gmail.com'),
('Tomas Velazques','1145672339','tommy.v@gmail.com'),
('Juliana Pipa','1145672499','juli.pipa@gmail.com'),
('Yesica Gomez','1145673402','yesica.g@outlook.com'),
('Marta Fernandez','1149972679','marta.fernandez@gmail.com'),
('Tommas Garcia','1145673379','tomas.garcia83@outlook.com'),
('Sofia Martuli','1145611875','sofia_martuli@gmail.com'),
('TomassaConstantino','1142459128','toma.constantino@outlook.com'),
('Rocio Roca','1141179859','rocio.roca@outlook.com'),
('Ramiro Ramirez','1145672239','ramiro_ramirez@gmail.com'),
('Roma Fernandez','1145672391','roma.f.99@gmail.com'),
('Ada Wong','1144473401','ada.wong@outlook.com'),
('Maria soledad Gerez','1149172669','maia.s.g@gmail.com'),
('Morena Rial','1145673875','more.r@outlook.com'),
('Soledad Silveryra Fernandez','1187111299','sole.s.f@outlook.com'),
('Soledad Cornet','1147279737','sole.cornet@outlook.com')
;

insert into animales (nombre,edad,especie,raza,peso,cuidador,genero)
values
('Odin',9,1,'Malamute de Alaska',21.2, 1,'M'),
('Loki',8,1,'Husky siberiano',16.2, 1,'M'),
('Thory',8,1,'Husky siberiano',18.2, 1,'M'),
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
('Uma',3,2,'Siamés',2.5, 14,'H'),
('Luigi',3,2,'Siamés',2.8, 15,'M'),
('Romeo',4,2,'Siamés',4.2, 16,'M'),
('Tommy',8,1,'Mestizo',8.2, 17,'M'),
('Tiger',3,2,'Gato persa',3.5, 18,'M'),
('Mia',3,2,'Gato esfinge',3.5, 19,'H'),
('Nala',4,2,'Gato esfinge',3.2, 20,'H'),
('Ponpon',3,4,'Conejo Polaco',1.5, 21,'H'),
('Ani',3,4,'Conejo Polaco',1.2, 21,'H'),
('Topo',4,4,'Conejo Polaco',2.2, 21,'M'),
('Luly',2,4,'Conejo Polaco',1.8, 21,'H'),
('Mae',3,4,'Conejo holandés enano',1.5, 22,'H'),
('Chispita',3,4,'Conejo holandés enano',1.2, 22,'H'),
('Pancho',4,4,'Conejo de Angora',3.5, 23,'M'),
('Zulu',2,4,'English Lop',5, 23,'H'),
('Mimis',1,3,'Serinus canaria',0.22, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.21, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.25, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.3, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.3, 24,'H'),
('Mimis',1,3,'Serinus canaria',0.25, 24,'H'),
('Raffa',3,1,'Mestizo',12.2, 25,'M'),
('Pepe',7,1,'Mestizo',9.2, 25,'M'),
('Pipo',3,4,'Conejo Polaco',1.3, 26,'M'),
('Ari',3,4,'Conejo Polaco',1.1, 26,'M'),
('Tota',4,4,'Conejo Polaco',2.5, 26,'H'),
('Lulo',2,4,'Conejo Polaco',1.7, 26,'M'),
('Pocho',7,1,'Mestizo',9.2, 27,'M'),
('Bobbi',5,1,'Mestizo',6.2, 27,'M'),
('Wendy',3,2,'Siamés',2.5, 28,'H'),
('Simon',3,2,'Siamés',2.8, 28,'M'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Pipa',1,3,'Serinus canaria',0.2, 29,'H'),
('Momo',5,1,'Mestizo',5.5, 30,'M'),
('Lulito',2,4,'English Lop',5, 31,'H'),
('Rosa',1,3,'gallina doméstica',1.5, 32,'H'),
('Nona',1,3,'gallina doméstica',1.5, 32,'H'),
('Norma',1,3,'gallina doméstica',1.5, 32,'H'),
('Paola',1,3,'gallina doméstica',1.5, 32,'H'),
('Tom',3,2,'Gato persa',3.1, 33,'M'),
('Male',3,2,'Gato esfinge',3.8, 33,'H'),
('Nini',4,2,'Gato esfinge',3.0, 33,'H'),
('Rocco',3,1,'Mestizo',12.2, 34,'M'),
('Ciro',7,1,'Mestizo',9.2, 35,'M'),
('Nalo',5,1,'Mestizo',6.2, 35,'M'),
('Mita',3,2,'Gato persa',3.1, 1,'M'),
('Momo',3,2,'Gato esfinge',3.8, 3,'H'),
('Nelson',4,2,'Gato esfinge',3.0, 7,'H'),
('Pipo',3,1,'Mestizo',12.2, 14,'M'),
('Luna',3,2,'Siamés',2.5, 22,'H'),
('Roro',3,2,'Siamés',2.8, 16,'M'),
('Falucho',3,1,'Mestizo',12.2, 36,'M'),
('Pochoclo',7,1,'Mestizo',9.2, 37,'M'),
('Bowie',5,1,'Mestizo',6.2, 38,'M'),
('Falucho',3,1,'Mestizo',12.2, 39,'M'),
('Pochoclo',7,1,'Mestizo',9.2, 40,'M'),
('Bowie',5,1,'Mestizo',6.2, 41,'M'),
('Falucho',3,1,'Mestizo',12.2, 42,'M'),
('Pochoclo',7,1,'Mestizo',9.2, 43,'M'),
('Bowie',5,1,'Mestizo',6.2, 44,'M'),
('Ciro',7,1,'Mestizo',9.2, 45,'M'),
('Nalo',5,1,'Mestizo',6.2, 45,'M'),
('Mita',3,2,'Gato persa',3.1, 46,'M'),
('Momo',3,2,'Gato esfinge',3.8, 47,'H'),
('Tota',4,4,'Conejo Polaco',2.5, 48,'H'),
('Lulo',2,4,'Conejo Polaco',1.7, 48,'M'),
('Pocho',7,1,'Mestizo',9.2, 49,'M'),
('Bobbi',5,1,'Mestizo',6.2, 50,'M'),
('Mimis',1,3,'Serinus canaria',0.22, 51,'H'),
('Mimis',1,3,'Serinus canaria',0.21, 51,'H'),
('Mimis',1,3,'Serinus canaria',0.22, 52,'H'),
('Mimis',1,3,'Serinus canaria',0.21, 52,'H'),
('Uma',3,2,'Siamés',2.5, 53,'H'),
('Luigi',3,2,'Siamés',2.8, 53,'M'),
('Uma',3,2,'Siamés',2.5, 54,'H'),
('Luigi',3,2,'Siamés',2.8, 54,'M'),
('Uma',3,2,'Siamés',2.5, 55,'H'),
('Luigi',3,2,'Siamés',2.8, 55,'M')
;


insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values 
(1,1, current_timestamp - INTERVAL '9 MONTH'),
(1,2, current_timestamp - INTERVAL '1 MONTH'),
(1,3, current_timestamp - INTERVAL '5 MONTH'),
(2,1, current_timestamp),
(2,2, current_timestamp - INTERVAL '2 MONTH'),
(2,3, current_timestamp - INTERVAL '6 MONTH'),
(3,1, current_timestamp),
(3,2, current_timestamp - INTERVAL '13 MONTH'),
(3,3, current_timestamp - INTERVAL '14 MONTH'),
(4,7, current_timestamp - INTERVAL '1 MONTH'),
(4,8, current_timestamp - INTERVAL '3 MONTH'),
(5,7, current_timestamp - INTERVAL '15 MONTH'),
(5,8, current_timestamp - INTERVAL '14 MONTH'),
(6,7, current_timestamp - INTERVAL '6 MONTH'),
(6,8, current_timestamp - INTERVAL '4 MONTH'),
(7,7, current_timestamp - INTERVAL '4 MONTH'),
(7,8, current_timestamp - INTERVAL '7 MONTH'),
(8,7, current_timestamp - INTERVAL '17 MONTH'),
(8,8, current_timestamp - INTERVAL '14 MONTH'),
(9,7, current_timestamp - INTERVAL '1 MONTH'),
(9,8, current_timestamp - INTERVAL '1 MONTH'),
(10,7, current_timestamp - INTERVAL '2 MONTH'),
(10,8, current_timestamp - INTERVAL '2 MONTH'),
(11,7, current_timestamp - INTERVAL '3 MONTH'),
(11,8, current_timestamp - INTERVAL '3 MONTH'),
(12,1, current_timestamp),
(12,2, current_timestamp - INTERVAL '2 MONTH'),
(12,3, current_timestamp - INTERVAL '6 MONTH'),
(13,1, current_timestamp),
(13,2, current_timestamp - INTERVAL '2 MONTH'),
(13,3, current_timestamp - INTERVAL '6 MONTH'),
(14,1, current_timestamp),
(14,2, current_timestamp - INTERVAL '2 MONTH'),
(14,3, current_timestamp - INTERVAL '6 MONTH'),
(15,9, current_timestamp),
(15,10, current_timestamp),
(16,9, current_timestamp),
(16,10, current_timestamp),
(17,9, current_timestamp - INTERVAL '13 MONTH'),
(17,10, current_timestamp - INTERVAL '13 MONTH'),
(18,9, current_timestamp),
(18,10, current_timestamp),
(19,9, current_timestamp),
(19,10, current_timestamp),
(20,9, current_timestamp - INTERVAL '13 MONTH'),
(20,10, current_timestamp - INTERVAL '13 MONTH'),
(21,9, current_timestamp),
(21,10, current_timestamp),
(22,9, current_timestamp),
(22,10, current_timestamp),
(23,1, current_timestamp - INTERVAL '9 MONTH'),
(23,2, current_timestamp - INTERVAL '1 MONTH'),
(23,3, current_timestamp - INTERVAL '5 MONTH'),
(24,1, current_timestamp),
(24,2, current_timestamp - INTERVAL '2 MONTH'),
(24,3, current_timestamp - INTERVAL '6 MONTH'),
(25,1, current_timestamp),
(25,2, current_timestamp - INTERVAL '3 MONTH'),
(25,3, current_timestamp - INTERVAL '4 MONTH'),
(26,4, current_timestamp),
(26,5, current_timestamp - INTERVAL '3 MONTH'),
(26,6, current_timestamp - INTERVAL '4 MONTH'),
(27,4, current_timestamp - INTERVAL '3 MONTH'),
(27,5, current_timestamp - INTERVAL '3 MONTH'),
(27,6, current_timestamp - INTERVAL '4 MONTH'),
(28,4, current_timestamp - INTERVAL '3 MONTH'),
(28,5, current_timestamp - INTERVAL '3 MONTH'),
(28,6, current_timestamp - INTERVAL '4 MONTH'),
(29,1, current_timestamp - INTERVAL '9 MONTH'),
(29,2, current_timestamp - INTERVAL '1 MONTH'),
(29,3, current_timestamp - INTERVAL '5 MONTH'),
(30,4, current_timestamp - INTERVAL '3 MONTH'),
(30,5, current_timestamp - INTERVAL '3 MONTH'),
(30,6, current_timestamp - INTERVAL '3 MONTH'),
(31,4, current_timestamp - INTERVAL '3 MONTH'),
(31,5, current_timestamp - INTERVAL '3 MONTH'),
(31,6, current_timestamp - INTERVAL '3 MONTH'),
(32,4, current_timestamp - INTERVAL '3 MONTH'),
(32,5, current_timestamp - INTERVAL '3 MONTH'),
(32,6, current_timestamp - INTERVAL '3 MONTH'),
(33,7, current_timestamp - INTERVAL '7 MONTH'),
(33,8, current_timestamp - INTERVAL '4 MONTH'),
(34,7, current_timestamp - INTERVAL '7 MONTH'),
(34,8, current_timestamp - INTERVAL '4 MONTH'),
(35,7, current_timestamp - INTERVAL '7 MONTH'),
(35,8, current_timestamp - INTERVAL '4 MONTH'),
(36,7, current_timestamp - INTERVAL '7 MONTH'),
(36,8, current_timestamp - INTERVAL '4 MONTH'),
(37,7, current_timestamp - INTERVAL '7 MONTH'),
(37,8, current_timestamp - INTERVAL '4 MONTH'),
(38,7, current_timestamp - INTERVAL '7 MONTH'),
(38,8, current_timestamp - INTERVAL '4 MONTH'),
(39,7, current_timestamp - INTERVAL '7 MONTH'),
(39,8, current_timestamp - INTERVAL '4 MONTH'),
(40,7, current_timestamp - INTERVAL '7 MONTH'),
(40,8, current_timestamp - INTERVAL '4 MONTH'),
(41,9, current_timestamp - INTERVAL '19 MONTH'),
(41,10, current_timestamp - INTERVAL '19 MONTH'),
(42,9, current_timestamp),
(42,10, current_timestamp),
(43,9, current_timestamp),
(43,10, current_timestamp),
(44,9, current_timestamp - INTERVAL '12 MONTH'),
(44,10, current_timestamp - INTERVAL '12 MONTH'),
(45,9, current_timestamp),
(45,10, current_timestamp),
(46,9, current_timestamp - INTERVAL '14 MONTH'),
(46,10, current_timestamp - INTERVAL '14 MONTH'),
(47,1, current_timestamp - INTERVAL '19 MONTH'),
(47,2, current_timestamp - INTERVAL '12 MONTH'),
(47,3, current_timestamp - INTERVAL '15 MONTH'),
(48,1, current_timestamp - INTERVAL '9 MONTH'),
(48,2, current_timestamp - INTERVAL '1 MONTH'),
(48,3, current_timestamp - INTERVAL '5 MONTH'),
(49,7, current_timestamp - INTERVAL '7 MONTH'),
(49,8, current_timestamp - INTERVAL '4 MONTH'),
(50,7, current_timestamp - INTERVAL '7 MONTH'),
(50,8, current_timestamp - INTERVAL '4 MONTH'),
(51,7, current_timestamp - INTERVAL '7 MONTH'),
(51,8, current_timestamp - INTERVAL '4 MONTH'),
(52,7, current_timestamp - INTERVAL '7 MONTH'),
(52,8, current_timestamp - INTERVAL '4 MONTH'),
(53,1, current_timestamp - INTERVAL '9 MONTH'),
(53,2, current_timestamp - INTERVAL '1 MONTH'),
(53,3, current_timestamp - INTERVAL '5 MONTH'),
(54,1, current_timestamp - INTERVAL '9 MONTH'),
(54,2, current_timestamp - INTERVAL '1 MONTH'),
(54,3, current_timestamp - INTERVAL '5 MONTH'),
(55,4, current_timestamp - INTERVAL '13 MONTH'),
(55,5, current_timestamp - INTERVAL '13 MONTH'),
(55,6, current_timestamp - INTERVAL '13 MONTH'),
(56,4, current_timestamp - INTERVAL '3 MONTH'),
(56,5, current_timestamp - INTERVAL '3 MONTH'),
(56,6, current_timestamp - INTERVAL '3 MONTH'),
(57,9, current_timestamp),
(57,10, current_timestamp),
(58,9, current_timestamp),
(58,10, current_timestamp),
(59,9, current_timestamp),
(59,10, current_timestamp),
(60,9, current_timestamp),
(60,10, current_timestamp),
(61,9, current_timestamp),
(61,10, current_timestamp),
(62,9, current_timestamp),
(62,10, current_timestamp),
(63,1, current_timestamp - INTERVAL '9 MONTH'),
(63,2, current_timestamp - INTERVAL '1 MONTH'),
(63,3, current_timestamp - INTERVAL '5 MONTH'),
(64,7, current_timestamp - INTERVAL '7 MONTH'),
(64,8, current_timestamp - INTERVAL '4 MONTH'),
(65,9, current_timestamp),
(65,10, current_timestamp),
(66,9, current_timestamp),
(66,10, current_timestamp),
(67,9, current_timestamp),
(67,10, current_timestamp),
(68,9, current_timestamp),
(68,10, current_timestamp),
(69,4, current_timestamp - INTERVAL '3 MONTH'),
(69,5, current_timestamp - INTERVAL '3 MONTH'),
(69,6, current_timestamp - INTERVAL '3 MONTH'),
(70,4, current_timestamp - INTERVAL '3 MONTH'),
(70,5, current_timestamp - INTERVAL '3 MONTH'),
(70,6, current_timestamp - INTERVAL '3 MONTH'),
(71,4, current_timestamp - INTERVAL '3 MONTH'),
(71,5, current_timestamp - INTERVAL '3 MONTH'),
(71,6, current_timestamp - INTERVAL '3 MONTH'),
(72,1, current_timestamp - INTERVAL '9 MONTH'),
(72,2, current_timestamp - INTERVAL '1 MONTH'),
(72,3, current_timestamp - INTERVAL '5 MONTH'),
(73,1, current_timestamp - INTERVAL '9 MONTH'),
(73,2, current_timestamp - INTERVAL '1 MONTH'),
(73,3, current_timestamp - INTERVAL '5 MONTH'),
(74,1, current_timestamp - INTERVAL '9 MONTH'),
(74,2, current_timestamp - INTERVAL '1 MONTH'),
(74,3, current_timestamp - INTERVAL '5 MONTH'),
(75,4, current_timestamp - INTERVAL '3 MONTH'),
(75,5, current_timestamp - INTERVAL '3 MONTH'),
(75,6, current_timestamp - INTERVAL '4 MONTH'),
(76,4, current_timestamp - INTERVAL '3 MONTH'),
(76,5, current_timestamp - INTERVAL '3 MONTH'),
(76,6, current_timestamp - INTERVAL '4 MONTH'),
(77,4, current_timestamp - INTERVAL '3 MONTH'),
(77,5, current_timestamp - INTERVAL '3 MONTH'),
(77,6, current_timestamp - INTERVAL '8 MONTH'),
(79,4, current_timestamp - INTERVAL '14 MONTH'),
(79,5, current_timestamp - INTERVAL '3 MONTH'),
(79,6, current_timestamp - INTERVAL '4 MONTH'),
(78,1, current_timestamp - INTERVAL '9 MONTH'),
(78,2, current_timestamp - INTERVAL '1 MONTH'),
(78,3, current_timestamp - INTERVAL '5 MONTH'),
(80,4, current_timestamp - INTERVAL '13 MONTH'),
(80,5, current_timestamp - INTERVAL '13 MONTH'),
(80,6, current_timestamp - INTERVAL '6 MONTH'),
(98,9, current_timestamp - INTERVAL '4 MONTH'),
(98,10, current_timestamp - INTERVAL '4 MONTH' ),
(99,9, current_timestamp - INTERVAL '4 MONTH'),
(99,10, current_timestamp - INTERVAL '4 MONTH' ),
(100,9, current_timestamp - INTERVAL '4 MONTH'),
(100,10, current_timestamp - INTERVAL '4 MONTH'),
(101,9, current_timestamp - INTERVAL '4 MONTH'),
(101,10, current_timestamp - INTERVAL '4 MONTH'),
(92,4, current_timestamp),
(92,5, current_timestamp - INTERVAL '3 MONTH'),
(92,6, current_timestamp - INTERVAL '4 MONTH'),
(93,4, current_timestamp),
(93,5, current_timestamp - INTERVAL '3 MONTH'),
(93,6, current_timestamp - INTERVAL '4 MONTH'),
(94,7, current_timestamp - INTERVAL '7 MONTH'),
(94,8, current_timestamp - INTERVAL '4 MONTH'),
(95,7, current_timestamp - INTERVAL '7 MONTH'),
(95,8, current_timestamp - INTERVAL '4 MONTH'),
(102,4, current_timestamp - INTERVAL '14 MONTH'),
(102,5, current_timestamp - INTERVAL '3 MONTH'),
(102,6, current_timestamp - INTERVAL '4 MONTH'),
(103,4, current_timestamp - INTERVAL '14 MONTH'),
(103,5, current_timestamp - INTERVAL '3 MONTH'),
(103,6, current_timestamp - INTERVAL '4 MONTH'),
(104,4, current_timestamp - INTERVAL '14 MONTH'),
(104,5, current_timestamp - INTERVAL '3 MONTH'),
(104,6, current_timestamp - INTERVAL '4 MONTH'),
(105,4, current_timestamp - INTERVAL '14 MONTH'),
(105,5, current_timestamp - INTERVAL '3 MONTH'),
(105,6, current_timestamp - INTERVAL '4 MONTH'),
(106,4, current_timestamp - INTERVAL '14 MONTH'),
(106,5, current_timestamp - INTERVAL '3 MONTH'),
(106,6, current_timestamp - INTERVAL '4 MONTH'),
(107,4, current_timestamp - INTERVAL '14 MONTH'),
(107,5, current_timestamp - INTERVAL '3 MONTH'),
(107,6, current_timestamp - INTERVAL '4 MONTH')
;


insert into visitas (ficha_medica,consulta,fecha,costo_visita)
values 
(1,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(2,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8000),
(3,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8000),
(4,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(5,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8000),
(6,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(7,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8000),
(8,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(9,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(10,'Chequeo médico general ', current_timestamp - INTERVAL '6 MONTH' , 8000),
(11,'Chequeo médico general ', current_timestamp - INTERVAL '7 MONTH' , 8000),
(12,'Chequeo médico general ', current_timestamp - INTERVAL '11 MONTH' , 8000),
(13,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(14,'Chequeo médico general ', current_timestamp - INTERVAL '13 MONTH' , 8000),
(15,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(16,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8000),
(17,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8800),
(18,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8000),
(19,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(20,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8600),
(21,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8000),
(22,'Chequeo médico general ', current_timestamp - INTERVAL '12 MONTH' , 8500),
(23,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(24,'Chequeo médico general ', current_timestamp - INTERVAL '17 MONTH' , 8600),
(25,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8000),
(26,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(27,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(28,'Chequeo médico general ', current_timestamp - INTERVAL '6 MONTH' , 8600),
(29,'Chequeo médico general ', current_timestamp - INTERVAL '5 MONTH' , 8000),
(30,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(31,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(32,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(33,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(34,'Chequeo médico general ', current_timestamp - INTERVAL '6 MONTH' , 8500),
(35,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(36,'Chequeo médico general ', current_timestamp - INTERVAL '5 MONTH' , 8500),
(37,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(38,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8500),
(39,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(40,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(41,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(42,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(43,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8500),
(44,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(45,'Chequeo médico general ', current_timestamp - INTERVAL '11 MONTH' , 8500),
(46,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(47,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(48,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8500),
(49,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(50,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8500),
(51,'Chequeo médico general ', current_timestamp - INTERVAL '5 MONTH' , 8500),
(52,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8500),
(53,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(54,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8500),
(55,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(56,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(57,'Chequeo médico general ', current_timestamp - INTERVAL '8 MONTH' , 8500),
(58,'Chequeo médico general ', current_timestamp - INTERVAL '7 MONTH' , 8500),
(59,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(60,'Chequeo médico general ', current_timestamp - INTERVAL '6 MONTH' , 8500),
(61,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8500),
(62,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(63,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(64,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8500),
(65,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(66,'Chequeo médico general ', current_timestamp - INTERVAL '2 MONTH' , 8500),
(67,'Chequeo médico general ', current_timestamp - INTERVAL '3 MONTH' , 8500),
(68,'Chequeo médico general ', current_timestamp - INTERVAL '11 MONTH' , 8500),
(69,'Chequeo médico general ', current_timestamp - INTERVAL '16 MONTH' , 8500),
(70,'Chequeo médico general ', current_timestamp - INTERVAL '4 MONTH' , 8500),
(71,'Chequeo médico general ', current_timestamp - INTERVAL '1 MONTH' , 8500),
(72,'Chequeo médico general ', current_timestamp - INTERVAL '6 MONTH' , 8500),
(73,'Chequeo médico general ', current_timestamp - INTERVAL '8 MONTH' , 8500)
;