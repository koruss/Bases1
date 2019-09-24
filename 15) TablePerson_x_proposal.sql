--------------CREACION TABLA CANTON----------------------------
create table person_x_proposal (
       id_proposal number(5),
       id_person varchar2(20)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE person_x_proposal
  ADD CONSTRAINT pk_person_x_proposal PRIMARY KEY (id_proposal,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE person_x_proposal
  ADD CONSTRAINT fk_personxproposal_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
ALTER TABLE person_x_proposal
  ADD CONSTRAINT fk_personxproposal_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE person_x_proposal
  IS 'Saves the relation of the proposals with the persons'; 
COMMENT ON COLUMN person_x_proposal.id_person
  IS 'Identifier of the person';  
COMMENT ON COLUMN person_x_proposal.id_proposal
  IS 'Identifier of the proposal';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE person_x_proposal ADD created_by VARCHAR(20);
ALTER TABLE person_x_proposal ADD creation_date DATE;  
COMMENT ON COLUMN person_x_proposal.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN person_x_proposal.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_person
       BEFORE INSERT
       ON admin.person_x_proposal
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_person;  
       
ALTER TABLE person_x_proposal ADD last_modification_by VARCHAR(20);
ALTER TABLE person_x_proposal ADD last_modification_date DATE;  
COMMENT ON COLUMN person_x_proposal.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN person_x_proposal.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson_x_proposal
       before update
       ON admin.person_x_proposal
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson_x_proposal;
