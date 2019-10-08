ALTER Table BINNACLE
      ADD Constraint pk_BINNACLE Primary Key (ID_BINNACLE)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table CANTON
      ADD Constraint pk_CANTON Primary Key (ID_CANTON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table CATEGORY_FAV
      ADD Constraint pk_CATEGORY_FAV Primary Key (ID_CATEGORY_FAV)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table CATEGORY_X_PERSON
      ADD Constraint pk_CATEGORY_X_PERSON Primary Key (ID_CATEGORY, ID_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table COMMENT_PROP
      ADD Constraint pk_COMMENT_PROP Primary Key (id_COMMENT)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table COMMUNITY
      ADD Constraint pk_COMMUNITY Primary Key (id_COMMUNITY)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table COUNTRY
      ADD Constraint pk_COUNTRY Primary Key (id_COUNTRY)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table DISTRICT
      ADD Constraint pk_DISTRICT Primary Key (id_DISTRICT)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table EMAIL
      ADD Constraint pk_EMAIL Primary Key (id_EMAIL)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table KIND_PERSON
      ADD Constraint pk_KIND_PERSON Primary Key (id_KIND_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table NATIONALITY
      ADD Constraint pk_NATIONALITY Primary Key (id_NATIONALITY)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table NATIONALITY_X_PERSON
      ADD Constraint pk_NATIONALITY_X_PERSON Primary Key (id_NATIONALITY, ID_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PARAMETER
      ADD Constraint pk_PARAMETER Primary Key (id_PARAMETER)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PERSON
      ADD Constraint pk_PERSON Primary Key (id_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PERSON_X_COMMENT
      ADD Constraint pk_PERSON_X_COMMENT Primary Key (id_PERSON, ID_COMMENT)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PERSON_X_PROPOSAL
      ADD Constraint pk_PERSON_X_PROPOSAL Primary Key (id_PERSON, ID_PROPOSAL)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PROPORSAL_X_COMMENT
      ADD Constraint pk_PROPORSAL_X_COMMENT Primary Key (id_PROPORSAL, ID_COMMENT)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PROPOSAL
      ADD Constraint pk_PROPOSAL Primary Key (id_PROPOSAL)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PROPOSAL_X_CATEGORY
      ADD Constraint pk_PROPOSAL_X_CATEGORY Primary Key (id_PROPOSAL, ID_CATEGORY_FAV)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table PROVINCE
      ADD Constraint pk_PROVINCE Primary Key (id_PROVINCE)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table TELEPHONE
      ADD Constraint pk_TELEPHONE Primary Key (PHONE_NUMBER, ID_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
ALTER Table USERNAME
      ADD Constraint pk_USERNAME Primary Key (id_USERNAME)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
    
ALTER Table VOTE
      ADD Constraint pk_VOTE Primary Key (ID_PROPOSAL, ID_PERSON)
      Using index
      Tablespace ADMIN_ind PCTFREE 20
      Storage (INITIAL 10k NEXT 10k PCTINCREASE 0);
      
