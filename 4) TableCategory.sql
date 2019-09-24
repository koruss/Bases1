--------------CREACION TABLA CATEGORIA----------------------------
CREATE TABLE category(
 id_Category NUMBER(5), 
 category_name VARCHAR2(50) CONSTRAINT category_name_nn NOT NULL
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE category
  ADD CONSTRAINT pk_category PRIMARY KEY (id_Category)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE category
  IS 'Saves the different categorys of proposals';
COMMENT ON COLUMN category.id_Category
  IS 'Identifier of the category';  
COMMENT ON COLUMN category.category_name
  IS 'Name of the category';
------------ CREACION DE SEQUENCIA PARA EL ID DE CATEGORIA-----
CREATE SEQUENCE s_category   
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE category ADD created_by VARCHAR(20);
ALTER TABLE category ADD creation_date DATE;  
COMMENT ON COLUMN category.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN category.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertCategory
       BEFORE INSERT
       ON admin.category
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCategory;  
       
ALTER TABLE category ADD last_modification_by VARCHAR(20);
ALTER TABLE category ADD last_modification_date DATE;  
COMMENT ON COLUMN category.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN category.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecategory
       before update
       ON admin.category
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecategory;
