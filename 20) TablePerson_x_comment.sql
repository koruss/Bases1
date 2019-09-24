--------------CREACION TABLA CANTON----------------------------
create table person_x_comment (
       id_comment number(5),
       id_person varchar2(20)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE person_x_comment
  ADD CONSTRAINT pk_person_x_comment PRIMARY KEY (id_comment,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE person_x_comment
  ADD CONSTRAINT fk_personxcomment_comment FOREIGN KEY
  (id_comment) REFERENCES
  proposal_comment(id_comment);
ALTER TABLE person_x_comment
  ADD CONSTRAINT fk_personxcomment_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE person_x_comment
  IS 'Saves the relation of the persons with the comments'; 
COMMENT ON COLUMN person_x_comment.id_comment
  IS 'Identifier of the comment';  
COMMENT ON COLUMN person_x_comment.id_person
  IS 'Identifier of the person';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE person_x_comment ADD created_by VARCHAR(20);
ALTER TABLE person_x_comment ADD creation_date DATE;  
COMMENT ON COLUMN person_x_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN person_x_comment.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertPerson_x_comment
       BEFORE INSERT
       ON admin.person_x_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertPerson_x_comment;  
       
ALTER TABLE person_x_comment ADD last_modification_by VARCHAR(20);
ALTER TABLE person_x_comment ADD last_modification_date DATE;  
COMMENT ON COLUMN person_x_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN person_x_comment.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson_x_comment
       before update
       ON admin.person_x_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson_x_comment;
