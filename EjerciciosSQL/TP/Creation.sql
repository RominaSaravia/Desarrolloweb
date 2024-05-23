-- Active: 1714513579081@@dpg-co7iljkf7o1s738hnqc0-a.oregon-postgres.render.com@5432@trabajobasededatos@public

CREATE TABLE cuidadores(
    id_cuidador SERIAL,
    nombre VARCHAR(50),
    telefono VARCHAR(20),
    email VARCHAR(100),
    PRIMARY KEY (id_cuidador)
)


CREATE TABLE animales(
    id_animal SERIAL,
    nombre VARCHAR(30),
    edad INTEGER,
    especie VARCHAR(50),
    raza VARCHAR(50),
    peso NUMERIC(11,2),
    cuidador INTEGER,
    genero CHAR,
    PRIMARY KEY (id_animal),
    Foreign Key (cuidador) REFERENCES cuidadores(id_cuidador)
);

CREATE TABLE fichas_medicas(
    id_ficha_medica SERIAL,
    animal integer,
    historial_medico TEXT,
    PRIMARY KEY (id_ficha_medica),
    Foreign Key (animal) REFERENCES animales(id_animal)
);


CREATE TABLE vacunas(
    id_vacuna SERIAL,
    nombre VARCHAR(200),
    N_total_dosis INTEGER,
    Tratamiento VARCHAR(200),
    Duracion_meses INTEGER,
    Especie VARCHAR(50),
    Coste NUMERIC(11,2),
    PRIMARY KEY (id_vacuna)
);


CREATE table fichas_vacunas(
    id_ficha_vacuna SERIAL,
    ficha_medica INTEGER,
    vacuna INTEGER,
    fecha_aplicacion TIMESTAMP,
    PRIMARY KEY (id_ficha_vacuna),
    Foreign Key (ficha_medica) REFERENCES fichas_medicas(id_ficha_medica),
    Foreign Key (vacuna) REFERENCES vacunas(id_vacuna)
);


create Table visitas(
    id_visita SERIAL,
    ficha_medica INTEGER,
    Consulta TEXT,
    Fecha TIMESTAMP,
    Costo_visita NUMERIC(11,2),
    PRIMARY KEY (id_visita),
    Foreign Key (ficha_medica) REFERENCES fichas_medicas(id_ficha_medica)
);


CREATE FUNCTION trigger_new_animal() 
RETURNS trigger
AS $$
BEGIN
    INSERT into fichas_medicas(animal,historial_medico) 
    values(NEW.id_animal,'Primera visita');
   
    return NEW;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER trigger_new_Animal_with_fichaM
AFTER INSERT
ON animales
FOR EACH ROW
EXECUTE FUNCTION trigger_new_animal();


