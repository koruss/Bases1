--------------CREACION TABLA PROVINCIA----------------------------
CREATE TABLE province(
 id_Province NUMBER(5), 
 id_Country NUMBER(5),
 province_name VARCHAR2 (20) CONSTRAINT province_name_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE province
  ADD CONSTRAINT pk_province PRIMARY KEY (id_Province)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
---------- CREACION DE LA LLAVE FORANEA -------------------------
ALTER TABLE province
  ADD CONSTRAINT fk_province_country FOREIGN KEY
  (id_Country) REFERENCES
  country(id_Country);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE province
  IS 'Saves all the information of the different provinces'; 
COMMENT ON COLUMN province.id_Province
  IS 'Identifier of the province';  
COMMENT ON COLUMN province.id_Country
  IS 'Identifier of the country wich the province belongs';
COMMENT ON COLUMN province.province_name
  IS 'Name of the province';
------------ CREACION DE SEQUENCIA PARA EL ID DE PROVINCIA-----
CREATE SEQUENCE s_province  
  START WITH 1
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE province ADD created_by VARCHAR(20);
ALTER TABLE province ADD creation_date DATE;  
COMMENT ON COLUMN province.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN province.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertProvince
       BEFORE INSERT
       ON admin.province
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProvince;  
       
ALTER TABLE province ADD last_modification_by VARCHAR(20);
ALTER TABLE province ADD last_modification_date DATE;  
COMMENT ON COLUMN province.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN province.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdateprovince
       before update
       ON admin.province
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateprovince;
