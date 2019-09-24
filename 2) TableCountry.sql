--------------CREACION TABLA PAIS----------------------------
CREATE TABLE country(
 id_Country NUMBER(5), 
 country_name VARCHAR2 (30) CONSTRAINT country_name_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE country
  ADD CONSTRAINT pk_country PRIMARY KEY (id_Country)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE country
  IS 'Saves all data of the different countrys registered in the system';
COMMENT ON COLUMN country.id_Country
  IS 'Identifier of the country';  
COMMENT ON COLUMN country.country_name
  IS 'Name of the country';
------------ CREACION DE SEQUENCIA PARA EL ID DE PAIS-----
CREATE SEQUENCE s_country   
  START WITH 1
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE country ADD created_by VARCHAR(20);
ALTER TABLE country ADD creation_date DATE;  
COMMENT ON COLUMN country.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN country.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertCountry
       BEFORE INSERT
       ON admin.country
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCountry;  
       
       
ALTER TABLE country ADD last_modification_by VARCHAR(20);
ALTER TABLE country ADD last_modification_date DATE;  
COMMENT ON COLUMN country.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN country.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateCountry
       before update
       ON admin.country
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateCountry;
