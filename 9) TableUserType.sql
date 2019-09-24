--------------CREACION TABLA TIPO DE USUARIO----------------------------
Create table UserType(
id_UserType Number(5) Constraint id_UserType_nn NOT Null,
UserType_Name Varchar(25) Constraint UserType_Name_nn NOT Null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER Table UserType
      ADD Constraint pk_UserType Primary Key (id_UserType)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);    
----------- COMENTARIOS DE LA TABLA ------------------------------     
Comment on table UserType
is 'Saves the different types of users that exists';
COMMENT on Column UserType.id_UserType 
is 'Identifier of the user type';
COMMENT on Column UserType.UserType_Name 
is 'Name of the user type';
------------ CREACION DE SEQUENCIA PARA EL ID DE CATEGORIA-----
CREATE SEQUENCE s_usertype  
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE userType ADD created_by VARCHAR2(25);
ALTER TABLE userType ADD creation_date DATE;  
COMMENT ON COLUMN userType.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN userType.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertUserType
       BEFORE INSERT
       ON admin.userType
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertUserType;  
       
ALTER TABLE userType ADD last_modification_by VARCHAR(20);
ALTER TABLE userType ADD last_modification_date DATE;  
COMMENT ON COLUMN userType.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN userType.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateuserType
       before update
       ON admin.userType
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateuserType;



