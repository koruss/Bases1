--------------CREACION TABLA CANTON----------------------------
create table Proposal_comment (
       id_comment number(5)CONSTRAINT id_comment_nn NOT null,
       comment_description varchar2(500)CONSTRAINT comment_description_nn NOT null,
       comment_date DATE CONSTRAINT comment_date_nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE Proposal_comment
  ADD CONSTRAINT pk_comment PRIMARY KEY (id_comment)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE Proposal_comment
  IS 'Save the comments made to a proposal'; 
COMMENT ON COLUMN Proposal_comment.id_Comment
  IS 'Identifier of comment';  
COMMENT ON COLUMN Proposal_comment.comment_description
  IS 'Save the content of the comment';
COMMENT ON COLUMN Proposal_comment.comment_date
  IS 'Save the date in wich the comment was made';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_comment
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE Proposal_comment ADD created_by VARCHAR(20);
ALTER TABLE Proposal_comment ADD creation_date DATE;  
COMMENT ON COLUMN Proposal_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Proposal_comment.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertComment
       BEFORE INSERT
       ON admin.Proposal_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertComment;  
       
       
ALTER TABLE Proposal_comment ADD last_modification_by VARCHAR(20);
ALTER TABLE Proposal_comment ADD last_modification_date DATE;  
COMMENT ON COLUMN Proposal_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Proposal_comment.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateProposal_comment
       before update
       ON admin.Proposal_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateProposal_comment;
