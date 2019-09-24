--------------CREACION TABLA USUARIO----------------------------
create table UserName(
       username varchar2(25) CONSTRAINT user_username_nn NOT null,
       password varchar2 (30) CONSTRAINT user_password_nn NOT NULL,
       identification varchar2(20)CONSTRAINT user_identificaion_nn NOT NULL,
       id_userType number(10) CONSTRAINT user_userType_nn NOT NULL
);

---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE UserName
  ADD CONSTRAINT pk_Username PRIMARY KEY (username)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
----------- CREACION DE LLAVES FORANEAS ------------------------------     
ALTER TABLE UserName
  ADD CONSTRAINT fk_User_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);
ALTER TABLE UserName
    ADD CONSTRAINT fk_User_UserType FOREIGN KEY
    (id_UserType ) REFERENCES
    UserType(id_UserType );
----------- COMENTARIOS DE LA TABLA ------------------------------     
Comment on table UserName
is 'Saves all date of users registered in the system';
COMMENT on Column UserName.id_UserType 
is 'Identifier of the different users';
COMMENT on Column UserName.userName 
is 'Saves the name of the unique user';
COMMENT on Column UserName.identification 
is 'Identifier oh the person wich the user are relacionated';
COMMENT on Column UserName.password
is 'Password of the user';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE UserName ADD created_by VARCHAR2(25);
ALTER TABLE UserName ADD creation_date DATE;  
COMMENT ON COLUMN UserName.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN UserName.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertUserName
       BEFORE INSERT
       ON admin.UserName
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertUserName;  
       
ALTER TABLE userName ADD last_modification_by VARCHAR(20);
ALTER TABLE userName ADD last_modification_date DATE;  
COMMENT ON COLUMN userName.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN userName.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateuserName
       before update
       ON admin.userName
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateuserName;


