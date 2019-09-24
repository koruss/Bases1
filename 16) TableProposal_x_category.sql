--------------CREACION TABLA CANTON----------------------------
create table proposal_x_category (
       id_proposal number(5),
       id_category number(5)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE proposal_x_category
  ADD CONSTRAINT pk_proposal_x_category PRIMARY KEY (id_proposal,id_category)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE proposal_x_category
  ADD CONSTRAINT fk_proposalxcategory_category FOREIGN KEY
  (id_category) REFERENCES
  category(id_category);
ALTER TABLE proposal_x_category
  ADD CONSTRAINT fk_proposalxcategory_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE proposal_x_category
  IS 'Saves the relation of the proposals with the categorys'; 
COMMENT ON COLUMN proposal_x_category.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN proposal_x_category.id_category
  IS 'Identifier of the category';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE proposal_x_category ADD created_by VARCHAR(20);
ALTER TABLE proposal_x_category ADD creation_date DATE;  
COMMENT ON COLUMN proposal_x_category.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN proposal_x_category.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_categor
       BEFORE INSERT
       ON admin.proposal_x_category
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_category;  
       
ALTER TABLE proposal_x_category ADD last_modification_by VARCHAR(20);
ALTER TABLE proposal_x_category ADD last_modification_date DATE;  
COMMENT ON COLUMN proposal_x_category.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN proposal_x_category.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatepropos_x_category
       before update
       ON admin.proposal_x_category
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatepropos_x_category;
