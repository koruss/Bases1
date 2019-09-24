--------------CREACION TABLA EMAIL----------------------------
Create table Telephone(
       Telephone Varchar(15) Constraint Telephone_nn NOT Null,
       Identification Varchar2(20) Constraint Telephone_Identification_nn NOT Null 
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER Table Telephone
      ADD Constraint pk_Telephone Primary Key (Telephone)
      Using index
      Tablespace admin_ind PCTFREE 20           
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
----------- CREACION DE LLAVES FORANEAS ------------------------------     
ALTER TABLE Telephone
  ADD CONSTRAINT fk_Telephone_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------       
Comment on table Telephone
is 'Saves the telephones of the persons';
COMMENT on Column Telephone.Telephone 
is 'Telephone of the person';
COMMENT on Column Telephone.identification 
is 'Identifier of the person that are relacionated with the telephone';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_Telephone
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE Telephone ADD created_by VARCHAR(20);
ALTER TABLE Telephone ADD creation_date DATE;  
COMMENT ON COLUMN Telephone.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Telephone.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertTelephone
       BEFORE INSERT
       ON admin.Telephone
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertTelephone;  
       
ALTER TABLE telephone ADD last_modification_by VARCHAR(20);
ALTER TABLE telephone ADD last_modification_date DATE;  
COMMENT ON COLUMN telephone.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN telephone.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatetelephone
       before update
       ON admin.telephone
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatetelephone;



