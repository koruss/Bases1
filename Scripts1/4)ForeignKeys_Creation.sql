---------- CREACION DE LAS LLAVES FORANEAS EN TABLA PROVINCIA -------------------------
ALTER TABLE province
  ADD CONSTRAINT fk_province_country FOREIGN KEY
  (id_Country) REFERENCES
  country(id_Country);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA CANTON -------------------------
ALTER TABLE canton
  ADD CONSTRAINT fk_canton_province FOREIGN KEY
  (id_province) REFERENCES
  province(id_province);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA COMMUNITY -------------------------
ALTER TABLE community
  ADD CONSTRAINT fk_community_canton FOREIGN KEY
  (id_canton) REFERENCES
  canton(id_canton);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA PERSONA -------------------------
ALTER TABLE Person
  ADD CONSTRAINT fk_person_community FOREIGN KEY
  (id_community) REFERENCES
  community(id_community);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA USUARIO -------------------------
ALTER TABLE UserName
  ADD CONSTRAINT fk_User_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);
ALTER TABLE UserName
    ADD CONSTRAINT fk_User_UserType FOREIGN KEY
    (id_UserType ) REFERENCES
    UserType(id_UserType );
    
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA EMAIL -------------------------
ALTER TABLE Email
  ADD CONSTRAINT fk_email_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA TELEFONO-------------------------
ALTER TABLE Telephone
  ADD CONSTRAINT fk_Telephone_person FOREIGN KEY
  (identification) REFERENCES
  Person(identification);

---------- CREACION DE LA LLAVE FORANEA -------------------------
ALTER TABLE binnacle
  ADD CONSTRAINT fk_binnacle_person FOREIGN KEY (id_Person)
  REFERENCES person(identification); 
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA NACIONALIDAD X PERSONA -------------------------
ALTER TABLE nationality_x_person
  ADD CONSTRAINT fk_nationxperson_nationality FOREIGN KEY
  (id_nationality) REFERENCES
  nationality(id_nationality);
ALTER TABLE nationality_x_person
  ADD CONSTRAINT fk_nationalityxperson_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA PROPUESTA X PERSONA -------------------------
ALTER TABLE person_x_proposal
  ADD CONSTRAINT fk_personxproposal_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
ALTER TABLE person_x_proposal
  ADD CONSTRAINT fk_personxproposal_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA PROPUESTA X CATEGORIA -------------------------
ALTER TABLE proposal_x_category
  ADD CONSTRAINT fk_proposalxcategory_category FOREIGN KEY
  (id_category) REFERENCES
  category(id_category);
ALTER TABLE proposal_x_category
  ADD CONSTRAINT fk_proposalxcategory_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA CATEGORIA X PERSONA -------------------------
ALTER TABLE category_x_person
  ADD CONSTRAINT fk_categoryxperson_category FOREIGN KEY
  (id_category) REFERENCES
  category(id_category);
ALTER TABLE category_x_person
  ADD CONSTRAINT fk_categoryxperson_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA PERSONA X COMENTARIO -------------------------
ALTER TABLE person_x_comment
  ADD CONSTRAINT fk_personxcomment_comment FOREIGN KEY
  (id_comment) REFERENCES
  proposal_comment(id_comment);
ALTER TABLE person_x_comment
  ADD CONSTRAINT fk_personxcomment_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA COMENTARIO X PROPUESTA -------------------------
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT fk_proposalxcomment_idproposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
ALTER TABLE proposal_x_comment
  ADD CONSTRAINT fk_proposalxcomment_idcomment FOREIGN KEY
  (id_comment) REFERENCES
  proposal_comment(id_comment);
  
---------- CREACION DE LAS LLAVES FORANEAS EN TABLA VOTO-------------------------
ALTER TABLE vote
  ADD CONSTRAINT fk_vote_id_proposal FOREIGN KEY
  (id_proposal) REFERENCES
  proposal(id_proposal);
ALTER TABLE vote
  ADD CONSTRAINT fk_vote_id_person FOREIGN KEY
  (id_person) REFERENCES
  person(identification);


