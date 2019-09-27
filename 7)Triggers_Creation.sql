---------------------CREACION TRIGGERS TABLA NACIONALIDAD-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertNationality
       before INSERT
       ON admin.nationality
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertNationality;
 

CREATE OR REPLACE TRIGGER admin.BeforeUpdateNationality
       before update
       ON admin.nationality
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateNationality;
     

---------------------CREACION TRIGGERS TABLA PAIS-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertCountry
       BEFORE INSERT
       ON admin.country
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCountry;  

       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateCountry
       before update
       ON admin.country
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateCountry;
       
---------------------CREACION TRIGGERS TABLA PROVINCIA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertProvince
       BEFORE INSERT
       ON admin.province
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProvince;        
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateprovince
       before update
       ON admin.province
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateprovince;

       
---------------------CREACION TRIGGERS TABLA CATEGORIA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertCategory
       BEFORE INSERT
       ON admin.category
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCategory;     
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecategory
       before update
       ON admin.category
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecategory;

       
---------------------CREACION TRIGGERS TABLA CANTON-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertCanton
       BEFORE INSERT
       ON admin.canton
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCanton; 
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecanton
       before update
       ON admin.canton
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecanton;

       
---------------------CREACION TRIGGERS TABLA COMMUNITY-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertCommunity
       BEFORE INSERT
       ON admin.community
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCommunity;  
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecommunity
       before update
       ON admin.community
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecommunity;
       
---------------------CREACION TRIGGERS TABLA PERSONA -------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertPerson
       BEFORE INSERT
       ON admin.person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertPerson;        

CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson
       before update
       ON admin.person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson;

---------------------CREACION TRIGGERS TABLA TIPO DE USUARIO -------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertUserType
       BEFORE INSERT
       ON admin.userType
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertUserType; 
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateuserType
       before update
       ON admin.userType
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateuserType;


---------------------CREACION TRIGGERS TABLA USUARIO -------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertUserName
       BEFORE INSERT
       ON admin.UserName
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertUserName;  
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateuserName
       before update
       ON admin.userName
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateuserName;      
---------------------CREACION TRIGGERS TABLA EMAIL-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertEmail
       BEFORE INSERT
       ON admin.Email
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertEmail;  
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateemail
       before update
       ON admin.email
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateemail;

---------------------CREACION TRIGGERS TABLA TELEFONO-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertTelephone
       BEFORE INSERT
       ON admin.Telephone
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertTelephone;  

       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatetelephone
       before update
       ON admin.telephone
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatetelephone;      
---------------------CREACION TRIGGERS TABLA PROPUESTA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal
       BEFORE INSERT
       ON admin.Proposal
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal;      

CREATE OR REPLACE TRIGGER admin.BeforeUpdateproposal
       before update
       ON admin.proposal
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateproposal;     
---------------------CREACION TRIGGERS TABLA COMENTARIO-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertComment
       BEFORE INSERT
       ON admin.Proposal_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertComment;  
       

CREATE OR REPLACE TRIGGER admin.BeforeUpdateProposal_comment
       before update
       ON admin.Proposal_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateProposal_comment;     
---------------------CREACION TRIGGERS TABLA PARAMETRO-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertParameter
       BEFORE INSERT
       ON admin.parameter
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertParameter;       
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateparameter
       before update
       ON admin.parameter
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateparameter;
;       
---------------------CREACION TRIGGERS TABLA NACIONALIDAD X PERSONA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertNation_x_person
       BEFORE INSERT
       ON admin.nationality_x_person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertNation_x_person;  
;
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatenation_x_person
       before update
       ON admin.nationality_x_person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatenation_x_person;
;       
---------------------CREACION TRIGGERS TABLA PROPUESTA X PERSONA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_person
       BEFORE INSERT
       ON admin.person_x_proposal
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_person;  
;
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson_x_proposal
       before update
       ON admin.person_x_proposal
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson_x_proposal;
;       
---------------------CREACION TRIGGERS TABLA PROPUESTA X CATEGORIA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_categor
       BEFORE INSERT
       ON admin.proposal_x_category
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_category;  
;
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatepropos_x_category
       before update
       ON admin.proposal_x_category
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatepropos_x_category;
;       
---------------------CREACION TRIGGERS TABLA CATEGORIA X PERSONA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertCategory_x_person
       BEFORE INSERT
       ON admin.category_x_person
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertCategory_x_person;  
;       
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatecategory_x_person
       before update
       ON admin.category_x_person
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatecategory_x_person;
;              
---------------------CREACION TRIGGERS TABLA PERSONA X COMENTARIO-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertPerson_x_comment
       BEFORE INSERT
       ON admin.person_x_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertPerson_x_comment;  
;       
     
CREATE OR REPLACE TRIGGER admin.BeforeUpdateperson_x_comment
       before update
       ON admin.person_x_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateperson_x_comment;
;

---------------------CREACION TRIGGERS TABLA COMENTARIO X PROPUESTA-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertProposal_x_comment
       BEFORE INSERT
       ON admin.proposal_x_comment
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertProposal_x_comment;  
;
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdateproposal_x_comment
       before update
       ON admin.proposal_x_comment
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdateproposal_x_comment;
;
---------------------CREACION TRIGGERS TABLA VOTO-------------------------
CREATE OR REPLACE TRIGGER admin.beforeInsertVote
       BEFORE INSERT
       ON admin.vote
       FOR EACH ROW
       BEGIN 
           :new.created_by:=USER;
           :new.creation_date:=SYSDATE;
       END beforeInsertVote;  
;       
       
CREATE OR REPLACE TRIGGER admin.BeforeUpdatevote
       before update
       ON admin.vote
       FOR EACH ROW
       BEGIN 
           :new.last_modification_by:=USER;
           :new.last_modification_date:=SYSDATE;
       END BeforeUpdatevote;
;

