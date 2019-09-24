--------------CREACION TABLA PERSONA----------------------------
Create table Person (
identification Varchar2(20) Constraint identification_nn NOT Null,
Name Varchar2(25) Constraint Person_first_Name_nn NOT Null,
first_Last_Name Varchar2(25) Constraint Person_first_Last_Name_nn NOT Null,
second_Last_Name Varchar2(25),
birthdate Date,
id_community number(5) Constraint id_person_community_nn NOT NULL
--Photo BFILE  (PREGUNTAR SI PHOTO NO TIENE UNA TABLA APARTE)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER Table Person
      ADD Constraint pk_Person Primary Key (Identification)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE Person
  ADD CONSTRAINT fk_person_community FOREIGN KEY
  (id_community) REFERENCES
  community(id_community);
----------- COMENTARIOS DE LA TABLA ------------------------------     
Comment on table Person
is 'Saves the information of all persons registered in the system';
COMMENT on Column Person.identification 
is 'Identification of the person';
COMMENT on Column Person.id_community 
is 'Identifier of the community wich the person belongs';
COMMENT on Column Person.name 
is 'Name of the person';
COMMENT on Column Person.first_Last_Name 
is 'First last name of the person';
COMMENT on Column Person.second_Last_Name 
is 'Second last name of the person';
COMMENT on Column Person.birthdate 
is 'Birthday of the person';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE person ADD created_by VARCHAR2(20);
ALTER TABLE person ADD creation_date DATE;  
COMMENT ON COLUMN person.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN person.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertPerson
       BEFORE INSERT
       ON admin.person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertPerson;  
       
ALTER TABLE person ADD last_modification_by VARCHAR(20);
ALTER TABLE person ADD last_modification_date DATE;  
COMMENT ON COLUMN person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN person.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson
       before update
       ON admin.person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson;

