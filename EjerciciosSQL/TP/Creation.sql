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
    especie INTEGER,
    raza VARCHAR(50),
    peso NUMERIC(11,2),
    cuidador INTEGER,
    genero CHAR,
    PRIMARY KEY (id_animal),
    Foreign Key (cuidador) REFERENCES cuidadores(id_cuidador),
    Foreign Key (especie) REFERENCES especies(id_especie)
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
    Especie INTEGER,
    Coste NUMERIC(11,2),
    PRIMARY KEY (id_vacuna),
    Foreign Key (Especie) REFERENCES especies(id_especie)
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

create table especies (
    id_especie SERIAL,
    nombre varchar(40),
    PRIMARY KEY (id_especie)
);



------------------------CREACION_NEW_FICHA_MEDICA---------------------------------
-- Se creará nueva ficha médica cuando un nuevo animal ingrese a la base de datos.
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
-- Cuando una vacuna es aplicada, una nuevo record de ficha_vacuna es creado esto resulta en:
-- un nuevo record de visita creado, la columna costo tendrá el valor del costo de la vacuna.
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
-- Antes de crear una nueva ficha_vacuna, valida si hubo una aplicacion de la misma vacuna anteriormente
-- Si el día de aplicacion es mayor a la duracion de la vacuna, pasa la validacion
CREATE OR REPLACE FUNCTION trigger_new_ficha_vacuna_val() 
RETURNS trigger AS $$
DECLARE nInterval integer;
DECLARE last_application TIMESTAMP;
DECLARE timeFlag TIMESTAMP;
BEGIN
    last_application := (SELECT fecha_aplicacion from fichas_vacunas Where vacuna = NEW.vacuna AND ficha_medica = NEW.ficha_medica ORDER BY fecha_aplicacion DESC LIMIT 1);
    nInterval := (SELECT duracion_meses from vacunas Where id_vacuna = NEW.vacuna  LIMIT 1);
    timeFlag = last_application + nInterval *  INTERVAL '1 MONTH';
    if ( (timeFlag < NEW.fecha_aplicacion AND nInterval <> 0 ) OR last_application IS NULL) 
    THEN
    return NEW;
    END IF;
    if(nInterval <> 0) THEN
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
values (3,5, current_timestamp);

insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values (3,1, current_timestamp);


---------VALIDACION_APLICACION_DE_VACUNA_SEGUN_ESPECIE ------------------
CREATE OR REPLACE FUNCTION trigger_new_ficha_vacuna_especie_val() 
RETURNS trigger AS $$
DECLARE especie_animal INTEGER;
DECLARE especie_vacuna INTEGER;
BEGIN
    especie_animal := (SELECT animales.especie  from fichas_medicas  
    LEFT JOIN animales ON fichas_medicas.animal = animales.id_animal
    Where  id_ficha_medica = NEW.ficha_medica LIMIT 1);
    especie_vacuna := (SELECT especie from vacunas Where id_vacuna = NEW.vacuna  LIMIT 1);

    if ( especie_animal = especie_vacuna  ) 
    THEN
    return NEW;
    END IF;
    RAISE EXCEPTION '-- No coincide la especie del animal con la vacuna' ;
    return NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_ficha_vacuna_especie_val
BEFORE INSERT
ON fichas_vacunas
FOR EACH ROW
EXECUTE FUNCTION trigger_new_ficha_vacuna_especie_val();



-----TEST_TIGGER_trigger_new_ficha_vacuna_especie_val

insert into fichas_vacunas (ficha_medica,vacuna,fecha_aplicacion)
values (9,5, current_timestamp);

