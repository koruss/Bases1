--------------CREACION TABLA CANTON----------------------------
create table category_x_person (
       id_category number(5),
       id_person varchar2(20)
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE category_x_person
  ADD CONSTRAINT pk_category_x_person PRIMARY KEY (id_category,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE category_x_person
  ADD CONSTRAINT fk_categoryxperson_category FOREIGN KEY
  (id_category) REFERENCES
  category(id_category);
ALTER TABLE category_x_person
  ADD CONSTRAINT fk_categoryxperson_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE category_x_person
  IS 'Saves the relation of the categorys with the persons'; 
COMMENT ON COLUMN category_x_person.id_category
  IS 'Identifier of the category';  
COMMENT ON COLUMN category_x_person.id_person
  IS 'Identifier of the person';
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE category_x_person ADD created_by VARCHAR(20);
ALTER TABLE category_x_person ADD creation_date DATE;  
COMMENT ON COLUMN category_x_person.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN category_x_person.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertCategory_x_person
       BEFORE INSERT
       ON admin.category_x_person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCategory_x_person;  
       
       
ALTER TABLE category_x_person ADD last_modification_by VARCHAR(20);
ALTER TABLE category_x_person ADD last_modification_date DATE;  
COMMENT ON COLUMN category_x_person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN category_x_person.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecategory_x_person
       before update
       ON admin.category_x_person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecategory_x_person;
