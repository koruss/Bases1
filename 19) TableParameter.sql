--------------CREACION TABLA CANTON----------------------------
create table parameter (
       id_parameter number(5)CONSTRAINT id_parameter_nn NOT null,
       parameter_name varchar2(20)CONSTRAINT parameter_name__nn NOT null,
       parameter_value number (10) CONSTRAINT parameter_value_nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE parameter
  ADD CONSTRAINT pk_parameter PRIMARY KEY (id_parameter)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE parameter
  IS 'Save the different parameters of the system'; 
COMMENT ON COLUMN parameter.id_parameter
  IS 'Identifier of the parameter';  
COMMENT ON COLUMN parameter.parameter_name
  IS 'Save the name of the parameter';
COMMENT ON COLUMN parameter.parameter_value
  IS 'Save the value of the parameter';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_parameter
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE parameter ADD created_by VARCHAR(20);
ALTER TABLE parameter ADD creation_date DATE;  
COMMENT ON COLUMN parameter.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN parameter.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertParameter
       BEFORE INSERT
       ON admin.parameter
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertParameter;  
       
       
ALTER TABLE parameter ADD last_modification_by VARCHAR(20);
ALTER TABLE parameter ADD last_modification_date DATE;  
COMMENT ON COLUMN parameter.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN parameter.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateparameter
       before update
       ON admin.parameter
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateparameter;
