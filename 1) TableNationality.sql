--------- CREACION TABLA NACIONALIDAD ----------------------------
CREATE TABLE nationality(
 id_Nationality NUMBER(5),
 nationality_Name VARCHAR2(50) CONSTRAINT nationality_name_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE nationality
  ADD CONSTRAINT pk_nationality PRIMARY KEY (id_Nationality)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE nationality
  IS 'Save all data of the different nationalities';
COMMENT ON COLUMN nationality.id_Nationality
  IS 'Identifier of the different nationalities';  
COMMENT ON COLUMN nationality.nationality_name
  IS 'Name of the nationality';
------------ CREACION DE SEQUENCIA PARA EL ID DE NACIONALIDAD-----
CREATE SEQUENCE s_nationality   
  START WITH 1
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE nationality ADD created_by VARCHAR(20);
ALTER TABLE nationality ADD creation_date DATE;  
COMMENT ON COLUMN nationality.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN nationality.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertNationality
       before INSERT
       ON admin.nationality
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertNationality;
 
      
ALTER TABLE nationality ADD last_modification_by VARCHAR(20);
ALTER TABLE nationality ADD last_modification_date DATE;  
COMMENT ON COLUMN nationality.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN nationality.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateNationality
       before update
       ON admin.nationality
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateNationality;
