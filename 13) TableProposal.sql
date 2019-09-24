--------------CREACION TABLA Propuesta----------------------------
create table Proposal (
       id_Proposal number(5)CONSTRAINT id_Proposal_nn NOT null,
       Proposal_name varchar2(100)CONSTRAINT Proposal_name_nn NOT null,
       proposal_description varchar2(100)CONSTRAINT proposal_description_nn NOT null,
       budget number(20) constraint proposal_budget_nn NOT NULL,
       vote number(10),
       proposal_Date DATE constraint proposal_date_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE Proposal
  ADD CONSTRAINT pk_Proposal PRIMARY KEY (id_Proposal)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE Proposal
  IS 'Table that saves all proposals made in the system'; 
COMMENT ON COLUMN Proposal.id_Proposal
  IS 'Identifier of the different proposals';  
COMMENT ON COLUMN Proposal.proposal_name 
  IS 'Name of the proposal';
COMMENT ON COLUMN Proposal.proposal_description
  IS 'Short description of the proposal';
COMMENT ON COLUMN Proposal.budget
  IS 'Aproximated budget of the proposal';
COMMENT ON COLUMN Proposal.vote
  IS 'Total of votes that the proposal has received';
COMMENT ON COLUMN Proposal.proposal_date
  IS 'Date in wich proposal was created';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_proposal
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE Proposal ADD created_by VARCHAR2(25);
ALTER TABLE Proposal ADD creation_date DATE;  
COMMENT ON COLUMN Proposal.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Proposal.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal
       BEFORE INSERT
       ON admin.Proposal
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal;
       
ALTER TABLE proposal ADD last_modification_by VARCHAR(20);
ALTER TABLE proposal ADD last_modification_date DATE;  
COMMENT ON COLUMN proposal.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN proposal.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateproposal
       before update
       ON admin.proposal
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateproposal;
