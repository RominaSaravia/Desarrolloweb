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


------------------------CREACION_NUEVA_FICHA_VACUNA---------------------------------
CREATE OR REPLACE FUNCTION trigger_new_animal() 
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


------------------------CREACION_NUEVA_FICHA_VACUNA---------------------------------

CREATE OR REPLACE FUNCTION trigger_new_ficha_vacuna() 
RETURNS trigger AS $$
DECLARE nombre_vacuna VARCHAR(200);
DECLARE costo_vacuna NUMERIC(11,2);
BEGIN
SELECT nombre, coste into nombre_vacuna, costo_vacuna from vacunas Where id_vacuna = NEW.vacuna;
    INSERT into visitas(ficha_medica,consulta,fecha,costo_visita) 
    values(NEW.ficha_medica,concat('Apliacion vacuna: ',nombre_vacuna), current_timestamp, costo_vacuna);
   
    return NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_new_ficha_vacuna_visita
AFTER INSERT
ON fichas_vacunas
FOR EACH ROW
EXECUTE FUNCTION trigger_new_ficha_vacuna();


---------------------VALIDACION_NUEVA_VACUNA----------------------------
CREATE OR REPLACE FUNCTION trigger_new_ficha_vacuna_val() 
RETURNS trigger AS $$
DECLARE nInterval integer;
DECLARE last_application TIMESTAMP;
DECLARE timeFlag TIMESTAMP;
BEGIN
    last_application := (SELECT fecha_aplicacion from fichas_vacunas Where vacuna = NEW.vacuna AND ficha_medica = NEW.ficha_medica ORDER BY fecha_aplicacion DESC LIMIT 1);
    nInterval := (SELECT duracion_meses from vacunas Where id_vacuna = NEW.vacuna  LIMIT 1);
    timeFlag = last_application + nInterval *  INTERVAL '1 MONTH';
    if (   (timeFlag   < NEW.fecha_aplicacion AND nInterval <> 99 ) OR last_application IS NULL) 
    THEN
    return NEW;
    END IF;
    if(nInterval <> 99) THEN
    RAISE EXCEPTION '--> Última aplicación fue en: %  proxima fecha para la vacuna: %', to_char(last_application, 'YYYY-MM-DD') , to_char(timeFlag, 'YYYY-MM-DD') ;
    END IF;
    RAISE EXCEPTION 'Esta vacuna ya fue aplicada el %', last_application;

    return NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_ficha_vacuna_val
BEFORE INSERT
ON fichas_vacunas
FOR EACH ROW
EXECUTE FUNCTION trigger_new_ficha_vacuna_val();

------------------------------------------------------------------------

----TEST_VALIDACION_NUEVA_FICHA_VACUNA-------
insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values (1,5, current_timestamp + INTERVAL '12 MONTH');

insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values (1,5, current_timestamp);

insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values (2,1, current_timestamp);


