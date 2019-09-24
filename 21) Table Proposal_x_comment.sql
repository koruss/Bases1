--------------CREACION TABLA CANTON----------------------------
create table proposal_x_comment (
       id_proposal number(5),
       id_comment number (5)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT pk_proposal_x_comment PRIMARY KEY (id_proposal,id_comment)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT fk_proposalxcomment_idproposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT fk_proposalxcomment_idcomment FOREIGN KEY
  (id_comment) REFERENCES
  proposal_comment(id_comment);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE proposal_x_comment
  IS 'Saves the relation of the proposals with the comments'; 
COMMENT ON COLUMN proposal_x_comment.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN proposal_x_comment.id_comment
  IS 'Identifier of the comment';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE proposal_x_comment ADD created_by VARCHAR(20);
ALTER TABLE proposal_x_comment ADD creation_date DATE;  
COMMENT ON COLUMN proposal_x_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN proposal_x_comment.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_comment
       BEFORE INSERT
       ON admin.proposal_x_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_comment;  
       
ALTER TABLE proposal_x_comment ADD last_modification_by VARCHAR(20);
ALTER TABLE proposal_x_comment ADD last_modification_date DATE;  
COMMENT ON COLUMN proposal_x_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN proposal_x_comment.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateproposal_x_comment
       before update
       ON admin.proposal_x_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateproposal_x_comment;
