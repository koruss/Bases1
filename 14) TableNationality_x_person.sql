--------------CREACION TABLA CANTON----------------------------
create table nationality_x_person (
       id_nationality number(5),
       id_person varchar2 (20)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE nationality_x_person
  ADD CONSTRAINT pk_nationality_x_person PRIMARY KEY (id_nationality,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE nationality_x_person
  ADD CONSTRAINT fk_nationxperson_nationality FOREIGN KEY
  (id_nationality) REFERENCES
  nationality(id_nationality);
ALTER TABLE nationality_x_person
  ADD CONSTRAINT fk_nationalityxperson_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE nationality_x_person
  IS 'Saves the relation of the nationalities with the persons'; 
COMMENT ON COLUMN nationality_x_person.id_nationality
  IS 'Identifier of the nationality';  
COMMENT ON COLUMN nationality_x_person.id_person
  IS 'Identifier of the person';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE nationality_x_person ADD created_by VARCHAR(20);
ALTER TABLE nationality_x_person ADD creation_date DATE;  
COMMENT ON COLUMN canton.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN canton.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertNation_x_person
       BEFORE INSERT
       ON admin.nationality_x_person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertNation_x_person;  
       
ALTER TABLE nationality_x_person ADD last_modification_by VARCHAR(20);
ALTER TABLE nationality_x_person ADD last_modification_date DATE;  
COMMENT ON COLUMN nationality_x_person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN nationality_x_person.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatenation_x_person
       before update
       ON admin.nationality_x_person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatenation_x_person;
