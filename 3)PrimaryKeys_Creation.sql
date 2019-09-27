---------- CREACION DE LA LLAVE PRIMARIA EN TABLA NACIONALIDAD -------------------------
ALTER TABLE nationality
  ADD CONSTRAINT pk_nationality PRIMARY KEY (id_Nationality)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);

---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PAIS -------------------------
ALTER TABLE country
  ADD CONSTRAINT pk_country PRIMARY KEY (id_Country)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);

---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PROVINCIA -------------------------
ALTER TABLE province
  ADD CONSTRAINT pk_province PRIMARY KEY (id_Province)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);

---------- CREACION DE LA LLAVE PRIMARIA EN TABLA CATEGORY-------------------------
ALTER TABLE category
  ADD CONSTRAINT pk_category PRIMARY KEY (id_Category)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);

---------- CREACION DE LA LLAVE PRIMARIA EN TABLA CANTON -------------------------
ALTER TABLE canton
  ADD CONSTRAINT pk_canton PRIMARY KEY (id_canton)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA COMMUNITY-------------------------
ALTER TABLE community
  ADD CONSTRAINT pk_community PRIMARY KEY (id_community)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PERSONA-------------------------
ALTER Table Person
      ADD Constraint pk_Person Primary Key (Identification)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA TIPO DE USUARIO-------------------------
ALTER Table UserType
      ADD Constraint pk_UserType Primary Key (id_UserType)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);  
      
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA USUARIO-------------------------
ALTER TABLE UserName
  ADD CONSTRAINT pk_Username PRIMARY KEY (username)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0
);

---------- CREACION DE LA LLAVE PRIMARIA EN TABLA EMAIL-------------------------
ALTER Table Email
      ADD Constraint pk_Email Primary Key (Email)
      Using index
      Tablespace admin_ind PCTFREE 20          
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA TELEFONO-------------------------
ALTER Table Telephone
      ADD Constraint pk_Telephone Primary Key (Telephone)
      Using index
      Tablespace admin_ind PCTFREE 20           
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PROPUESTA-------------------------
ALTER TABLE Proposal
  ADD CONSTRAINT pk_Proposal PRIMARY KEY (id_Proposal)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA COMENTARIO-------------------------
ALTER TABLE Proposal_comment
  ADD CONSTRAINT pk_comment PRIMARY KEY (id_comment)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PARAMETRO-------------------------
ALTER TABLE parameter
  ADD CONSTRAINT pk_parameter PRIMARY KEY (id_parameter)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA NACIONALIDAD X PERSONA-------------------------
ALTER TABLE nationality_x_person
  ADD CONSTRAINT pk_nationality_x_person PRIMARY KEY (id_nationality,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PROPUESTA X PERSONA-------------------------
ALTER TABLE person_x_proposal
  ADD CONSTRAINT pk_person_x_proposal PRIMARY KEY (id_proposal,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PROPUESTA X CATEGORIA-------------------------
ALTER TABLE proposal_x_category
  ADD CONSTRAINT pk_proposal_x_category PRIMARY KEY (id_proposal,id_category)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA CATEGORIA X PERSONA-------------------------
ALTER TABLE category_x_person
  ADD CONSTRAINT pk_category_x_person PRIMARY KEY (id_category,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA PERSONA X COMENTARIO-------------------------
ALTER TABLE person_x_comment
  ADD CONSTRAINT pk_person_x_comment PRIMARY KEY (id_comment,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA COMENTARIO X PROPUESTA-------------------------
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT pk_proposal_x_comment PRIMARY KEY (id_proposal,id_comment)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
---------- CREACION DE LA LLAVE PRIMARIA EN TABLA VOTO-------------------------
ALTER TABLE vote
  ADD CONSTRAINT pk_vote PRIMARY KEY (id_proposal,id_person)
  USING INDEX
  TABLESPACE admin_ind PCTFREE 20
  STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
  
