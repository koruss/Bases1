--------------CREACION TABLA PROVINCIA----------------------------
CREATE TABLE binnacle (
 id_Binnacle NUMBER(5) CONSTRAINT id_binnacle_nn NOT NULL, 
 id_Person VARCHAR2(20) CONSTRAINT id_person_nn NOT NULL,
 previous_password varchar2(30) CONSTRAINT previous_password_nn NOT NULL,
 pass_change_date DATE CONSTRAINT pass_change_date_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE binnacle
  ADD CONSTRAINT pk_Binnacle PRIMARY KEY (id_Binnacle)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
---------- CREACION DE LA LLAVE FORANEA -------------------------
ALTER TABLE binnacle
  ADD CONSTRAINT fk_binnacle_person FOREIGN KEY (id_Person)
  REFERENCES person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE binnacle
  IS 'Saves all the information of the binacles'; 
COMMENT ON COLUMN binnacle.id_Binnacle
  IS 'Identifier of the binnacle';  
COMMENT ON COLUMN binnacle.id_Person
  IS 'Identifier of the person that changes their password';
COMMENT ON COLUMN binnacle.previous_password
  IS 'The previous password of the user';
COMMENT ON COLUMN binnacle.pass_change_date
  IS 'Date of the change of password';
------------ CREACION DE SEQUENCIA PARA EL ID DE PROVINCIA-----
CREATE SEQUENCE s_binnacle 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE binnacle ADD created_by VARCHAR(20);
ALTER TABLE binnacle ADD creation_date DATE;  
COMMENT ON COLUMN binnacle.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN binnacle.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertBinnacle
       BEFORE INSERT
       ON admin.binnacle
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertBinnacle;
       
       
ALTER TABLE binnacle ADD last_modification_by VARCHAR(20);
ALTER TABLE binnacle ADD last_modification_date DATE;  
COMMENT ON COLUMN binnacle.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN binnacle.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatebinnacle
       before update
       ON admin.binnacle
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatebinnacle;
