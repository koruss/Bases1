--------------CREACION TABLA DISTRITO----------------------------
create table district (
   id_district number(5) CONSTRAINT id_district_nn NOT null,
   district_name varchar2(30) CONSTRAINT district_name_nn NOT null,
   id_canton number(5) CONSTRAINT id_district_canton_nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE district
  ADD CONSTRAINT pk_district PRIMARY KEY (id_district)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE district
  ADD CONSTRAINT fk_district_canton FOREIGN KEY
  (id_canton) REFERENCES
  canton(id_canton);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE district
  IS 'Saves all data of the different districts'; 
COMMENT ON COLUMN district.id_District
  IS 'Identifier of the district';  
COMMENT ON COLUMN district.district_name
  IS 'Name of the district';
COMMENT ON COLUMN district.id_Canton
  IS 'Identifier of the canton wich the district belongs';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_district
  START WITH 1
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE district ADD created_by VARCHAR(20);
ALTER TABLE district ADD creation_date DATE;  
COMMENT ON COLUMN district.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN district.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertDistrict
       BEFORE INSERT
       ON admin.district
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertDistrict;  
       
       
ALTER TABLE district ADD last_modification_by VARCHAR(20);
ALTER TABLE district ADD last_modification_date DATE;  
COMMENT ON COLUMN district.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN district.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatedistrict
       before update
       ON admin.district
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatedistrict;


