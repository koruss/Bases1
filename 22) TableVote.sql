--------------CREACION TABLA CANTON----------------------------
create table vote (
       id_proposal number(5)CONSTRAINT id_vote_proposal_nn NOT null,
       id_person varchar2(20)CONSTRAINT id_vote_person_nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE vote
  ADD CONSTRAINT pk_vote PRIMARY KEY (id_proposal,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVES FORÁNEAS------------------------
ALTER TABLE vote
  ADD CONSTRAINT fk_vote_id_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
ALTER TABLE vote
  ADD CONSTRAINT fk_vote_id_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE vote
  IS 'Save the votes made to a proposal'; 
COMMENT ON COLUMN vote.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN vote.id_person
  IS 'Save the person who made the vote';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_vote
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE vote ADD created_by VARCHAR(20);
ALTER TABLE vote ADD creation_date DATE;  
COMMENT ON COLUMN vote.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN vote.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertVote
       BEFORE INSERT
       ON admin.vote
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertVote;  
       
       
ALTER TABLE vote ADD last_modification_by VARCHAR(20);
ALTER TABLE vote ADD last_modification_date DATE;  
COMMENT ON COLUMN vote.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN vote.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatevote
       before update
       ON admin.vote
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatevote;
