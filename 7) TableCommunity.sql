--------------CREACION TABLA COMUNIDAD----------------------------
create table community (
       id_community number(5)CONSTRAINT id_community_nn NOT null,
       community_name varchar2(30)CONSTRAINT community_name_nn NOT null,
       id_district number(5)CONSTRAINT comunity_district_id__nn NOT null
);
---------- CREACION DE LA LLAVE PRIMARIA -------------------------
ALTER TABLE community
  ADD CONSTRAINT pk_community PRIMARY KEY (id_community)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
---------- CREACION DE LAS LLAVE FORANEA -------------------------
ALTER TABLE community
  ADD CONSTRAINT fk_community_district FOREIGN KEY
  (id_district) REFERENCES
  district(id_district);
----------- COMENTARIOS DE LA TABLA ------------------------------
COMMENT ON TABLE community
  IS 'Saves the data of different communities'; 
COMMENT ON COLUMN community.id_Community
  IS 'Identifier of the community';  
COMMENT ON COLUMN community.Community_name
  IS 'Name of the community';
COMMENT ON COLUMN community.id_district
  IS 'Identifier of the district wich the community belongs';
------------ CREACION DE SEQUENCIA PARA EL ID DE CANTON-----
CREATE SEQUENCE s_community
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 10000000
  NOCACHE
  NOCYCLE;
---------------------CREACION DEL TRIGGER-------------------------
ALTER TABLE community ADD created_by VARCHAR(20);
ALTER TABLE community ADD creation_date DATE;  
COMMENT ON COLUMN community.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN community.creation_date
  IS 'Date in wich the data was entered';
CREATE OR REPLACE TRIGGER admin.beforeInsertCommunity
       BEFORE INSERT
       ON admin.community
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCommunity;  
       
ALTER TABLE community ADD last_modification_by VARCHAR(20);
ALTER TABLE community ADD last_modification_date DATE;  
COMMENT ON COLUMN community.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN community.last_modification_date
  IS 'Date of last modification';
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecommunity
       before update
       ON admin.community
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecommunity;
