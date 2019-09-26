--------------CREACION TABLA PROVINCIA----------------------------
CREATE TABLE binnacle (
 id_Binnacle NUMBER(5) CONSTRAINT id_binnacle_nn NOT NULL, 
 id_Person VARCHAR2(20) CONSTRAINT id_person_nn NOT NULL,
 previous_password varchar2(30) CONSTRAINT previous_password_nn NOT NULL,
 current_password varchar2(30) constraint current_password_nn not null,
 pass_change_date DATE CONSTRAINT pass_change_date_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE binnacle
  ADD CONSTRAINT pk_Binnacle PRIMARY KEY (id_Binnacle)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
---------- CREACION DE LA LLAVE FORANEA -------------------------
ALTER TABLE binnacle
  ADD CONSTRAINT fk_binnacle_person FOREIGN KEY (id_Person)
  REFERENCES person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE binnacle
  IS 'Saves all the information of the binacles'; 
COMMENT ON COLUMN binnacle.id_Binnacle
  IS 'Identifier of the binnacle';  
COMMENT ON COLUMN binnacle.id_Person
  IS 'Identifier of the person that changes their password';
COMMENT ON COLUMN binnacle.previous_password
  IS 'The previous password of the user';
COMMENT ON COLUMN binnacle.pass_change_date
  IS 'Date of the change of password';
------------ CREACION DE SEQUENCIA PARA EL ID DE PROVINCIA-----
CREATE SEQUENCE s_binnacle 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------    
create or replace trigger admin.beforeUpdate_password_Bitacora 
       after update of password
       on ad.username 
       for each row 
       begin 
         insert into admin.binnacle(nom_esquema,nom_tabla,nom_campo,
         valor_anterior,valor_actual,usuario_creacion,fecha_ultima_modificacion)
         values('AD','Employee','Salary',:old.salary,:new.salary,user,sysdate);
       end beforeUpdate_Salary_Bitacora;
