--------------CREACION TABLA EMAIL----------------------------
Create table Email(
       Email Varchar2(50) Constraint Email_nn NOT Null,
       Identification Varchar2(20) Constraint Email_Identification_nn NOT Null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER Table Email
      ADD Constraint pk_Email Primary Key (Email)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
----------- CREACION DE LLAVES FORANEAS ------------------------------     
ALTER TABLE Email
  ADD CONSTRAINT fk_email_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------       
Comment on table Email
is 'Saves the emails of the persons';
COMMENT on Column Email.Email 
is 'Email of the person';
COMMENT on Column Email.identification 
is 'Identifier of the person that are relacionated with the email"';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_email
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE Email ADD created_by VARCHAR2(25);
ALTER TABLE Email ADD creation_date DATE;  
COMMENT ON COLUMN Email.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Email.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertEmail
       BEFORE INSERT
       ON admin.Email
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertEmail;  
       
ALTER TABLE email ADD last_modification_by VARCHAR(20);
ALTER TABLE email ADD last_modification_date DATE;  
COMMENT ON COLUMN email.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN email.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateemail
       before update
       ON admin.email
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateemail;



