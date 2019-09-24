--------------CREACION TABLA CANTON----------------------------
create table canton (
       id_canton number(5)CONSTRAINT id_canton_nn NOT null,
       canton_name varchar2(25)CONSTRAINT canton_name_nn NOT null,
       id_province number(5)CONSTRAINT id_province_nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE canton
  ADD CONSTRAINT pk_canton PRIMARY KEY (id_canton)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE canton
  ADD CONSTRAINT fk_canton_province FOREIGN KEY
  (id_province) REFERENCES
  province(id_province);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE canton
  IS 'Saves all data of the different cantons'; 
COMMENT ON COLUMN canton.id_Canton
  IS 'Identifier of the canton';  
COMMENT ON COLUMN canton.canton_name
  IS 'Name of the canton';
COMMENT ON COLUMN canton.id_Province
  IS 'Identifier of the province wich the canton belongs';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_canton
  START WITH 1
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE canton ADD created_by VARCHAR(20);
ALTER TABLE canton ADD creation_date DATE;  
COMMENT ON COLUMN canton.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN canton.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertCanton
       BEFORE INSERT
       ON admin.canton
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCanton;  
       
ALTER TABLE canton ADD last_modification_by VARCHAR(20);
ALTER TABLE canton ADD last_modification_date DATE;  
COMMENT ON COLUMN canton.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN canton.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecanton
       before update
       ON admin.canton
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecanton;

