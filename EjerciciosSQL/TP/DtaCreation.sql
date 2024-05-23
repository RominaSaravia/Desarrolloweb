-- Active: 1714513579081@@dpg-co7iljkf7o1s738hnqc0-a.oregon-postgres.render.com@5432@trabajobasededatos@public
insert into vacunas ( nombre ,N_total_dosis ,Tratamiento,Duracion_meses,Especie,Coste) 
values 
('Vacuna bivalente',1,'Moquillo y Parvovirus',99,'canina', 3500),
('Vacuna polivalente',3,'Moquillo canino,Parvovirus,Hepatitis Infecciona C, Leptospitosis,Parainfluenza',12,'canina',5000),
('Vacuna AntiRabica',1,'Antirabica',12,'canina',4500),
('Vacuna trivalente',3,'Panleucopenia,rinotraqueitis,calicivirus felino',12,'felina',3500),
('Vacuna para Leucemia felina',2,'Leucemia felina',12,'felina',5000),
('Vacuna AntiRabica',1,'Rabia felina',12,'felina',4500),
('vacuna de la mixomatosis',1,'Mixomatosis',12,'Oryctolagus cuniculus',5500),
('Vacuna de la fiebre hemorrágica',1,'Hemorragia vírica',12,'Oryctolagus cuniculus',5500),
('Vacuna Gumboro',1,'Bursitis infecciosa',99,'ave',6000),
('Vacuna contra la Viruela Aviar',1,'Viruela aviar',99,'ave',6000)
;

insert into vacunas ( nombre ,N_total_dosis ,Tratamiento,Duracion_meses,Especie,Coste) 
values 
('Anual Vacuna polivalente',1,'Moquillo canino,Parvovirus,Hepatitis Infecciona C, Leptospitosis,Parainfluenza',12,'canina',5000),
('Anual Vacuna AntiRabica',1,'Antirabica',12,'canina',4500),
('Anual Vacuna trivalente',1,'Panleucopenia,rinotraqueitis,calicivirus felino',12,'felina',3500),
('Anual Vacuna para Leucemia felina',1,'Leucemia felina',12,'felina',5000),
('Anual Vacuna AntiRabica',1,'Rabia felina',12,'felina',4500),
('Anual Vacuna de la mixomatosis',1,'Mixomatosis',12,'Oryctolagus cuniculus',5500),
('Anual Vacuna de la fiebre hemorrágica',1,'Hemorragia vírica',12,'Oryctolagus cuniculus',5500),

;

insert into cuidadores (nombre,telefono,email)
VALUES
('Julian Gomez','1145679875','julian.gomez@outlook.com'),
('Juliana Fernandez','1133219899','julianafernandez@outlook.com'),
('Tomás Kuras','1147779832','tomaskuras@outlook.com'),
('Sofia Gala','1145679875','sofiagala@gmail.com'),
('Nicola Constantino','1145459128','nicola.constantino@outlook.com'),
('Francisco Gomez','1141179855','panchogomez94@outlook.com'),
('Romina Saravia','1145672231','romina.saravia@gmail.com'),
('Roman Riquelme','1145672491','riquelme.roman@gmail.com'),
('Sol Chiang','1145673401','sol.chiang92@outlook.com'),
('Marisol García','1149972669','marisol.99.garcia@gmail.com')
('Juliana Gomez','1145673375','julianagomez@outlook.com'),
('Yolanda Fernandez','1133211299','yolandafernandez@outlook.com'),
('Tomás Cornet','1147779832','tomas.cornet@outlook.com'),
('Sofia Manero','1145679875','sofiamanero91@gmail.com'),
('Nicolas Saenz','1145459128','nico.saenz@outlook.com'),
('Roberto Ratamazik','1141179855','elratamazik86@outlook.com'),
('Rocio Guirao','1145672231','rochi.guirao@gmail.com'),
('Ruben Mazik','1145672491','rube.mazik88@gmail.com'),
('Sol Alberdi','1145673401','sol.alberdi@outlook.com'),
('Guillermo Nescao','1149972669','guillote.nescao82@gmail.com')
;

insert into animales (nombre,edad,especie,raza,peso,cuidador,genero)
values
('Odin',9,'canino','Malamute de Alaska',21.2, 1,'M'),
('Loki',8,'canino','Husky siberiano',16.2, 1,'M'),
('Loki',8,'canino','Husky siberiano',18.2, 1,'M'),
('Chipi',3,'Oryctolagus cuniculus','Conejo Polaco',1.5, 2,'H'),
('Ariel',3,'Oryctolagus cuniculus','Conejo Polaco',1.2, 2,'H'),
('Toto',4,'Oryctolagus cuniculus','Conejo Polaco',2.2, 2,'M'),
('Luli',2,'Oryctolagus cuniculus','Conejo Polaco',1.8, 2,'H'),
('Tata',3,'Oryctolagus cuniculus','Conejo holandés enano',1.5, 3,'H'),
('Yapa',3,'Oryctolagus cuniculus','Conejo holandés enano',1.2, 3,'H'),
('Pipa',4,'Oryctolagus cuniculus','Conejo de Angora',3.5, 4,'M'),
('Shubi',2,'Oryctolagus cuniculus','English Lop',5, 5,'H'),
('Falucho',3,'canino','Mestizo',12.2, 6,'M'),
('Pochoclo',7,'canino','Mestizo',9.2, 7,'M'),
('Bowie',5,'canino','Mestizo',6.2, 8,'M'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Pipi',1,'ave','Serinus canaria',0.2, 9,'H'),
('Vivi',1,'ave','gallina doméstica',1.5, 10,'H'),
('Paola',1,'ave','gallina doméstica',1.5, 10,'H'),
('Grachi',9,'canino','Malamute de Alaska',19.8, 11,'H'),
('Topito',8,'canino','Husky siberiano',16.2, 12,'M'),
('Luly',8,'canino','Husky siberiano',18.2, 13,'H'),
('Uma',3,'Felino','Siamés',2.5, 14,'H'),
('Luigi',3,'Felino','Siamés',2.8, 15,'M'),
('Romeo',4,'Felino','Siamés',4.2, 16,'M'),
('Tommy',8,'canino','Metstizo',8.2, 17,'M'),
('Tiger',3,'Felino','Gato persa',3.5, 18,'M'),
('Mia',3,'Felino','Gato esfinge',3.5, 19,'H'),
('Nala',4,'Felino','Gato esfinge',3.2, 20,'H')
;
