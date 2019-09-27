-------------------CREACIÓN TABLAS PRINCIPALES 
--------------------------DEL SISTEMA



--------- CREACION TABLA NACIONALIDAD ----------------------------
CREATE TABLE nationality(
 id_Nationality NUMBER(5),
 nationality_Name VARCHAR2(50) CONSTRAINT nationality_name_nn NOT NULL,
 created_by VARCHAR(20),
 creation_date date,
 last_modification_by VARCHAR(20),
 last_modification_date DATE
);

--------------CREACION TABLA PAIS----------------------------
CREATE TABLE country(
 id_Country NUMBER(5), 
 country_name VARCHAR2 (30) CONSTRAINT country_name_nn NOT NULL,
 created_by VARCHAR(20),
 creation_date date,
 last_modification_by VARCHAR(20),
 last_modification_date DATE
);

--------------CREACION TABLA PROVINCIA----------------------------
CREATE TABLE province(
 id_Province NUMBER(5), 
 id_Country NUMBER(5),
 province_name VARCHAR2 (20) CONSTRAINT province_name_nn NOT NULL,
 created_by VARCHAR(20),
 creation_date date,
 last_modification_by VARCHAR(20),
 last_modification_date DATE
);

--------------CREACION TABLA CATEGORIA----------------------------
CREATE TABLE category(
 id_Category NUMBER(5), 
 category_name VARCHAR2(50) CONSTRAINT category_name_nn NOT NULL,
 created_by VARCHAR(20),
 creation_date date,
 last_modification_by VARCHAR(20),
 last_modification_date DATE
);

--------------CREACION TABLA CANTON----------------------------
create table canton (
       id_canton number(5)CONSTRAINT id_canton_nn NOT null,
       canton_name varchar2(25)CONSTRAINT canton_name_nn NOT null,
       id_province number(5)CONSTRAINT id_province_nn NOT null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA COMUNIDAD----------------------------
create table community (
       id_community number(5)CONSTRAINT id_community_nn NOT null,
       community_name varchar2(30)CONSTRAINT community_name_nn NOT null,
       id_canton number(5)CONSTRAINT comunity_canton_id__nn NOT null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA PERSONA----------------------------
Create table Person (
       identification Varchar2(20) Constraint identification_nn NOT Null,
       Name Varchar2(25) Constraint Person_first_Name_nn NOT Null,
       first_Last_Name Varchar2(25) Constraint Person_first_Last_Name_nn NOT Null,
       second_Last_Name Varchar2(25),
       birthdate Date,
       id_community number(5) Constraint id_person_community_nn NOT NULL,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
       --Photo BFILE  (PREGUNTAR SI PHOTO NO TIENE UNA TABLA APARTE)
);

--------------CREACION TABLA TIPO DE USUARIO----------------------------
Create table UserType(
       id_UserType Number(5) Constraint id_UserType_nn NOT Null,
       UserType_Name Varchar(25) Constraint UserType_Name_nn NOT Null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA USUARIO----------------------------
create table UserName(
       username varchar2(25) CONSTRAINT user_username_nn NOT null,
       password varchar2 (30) CONSTRAINT user_password_nn NOT NULL,
       identification varchar2(20)CONSTRAINT user_identificaion_nn NOT NULL,
       id_userType number(10) CONSTRAINT user_userType_nn NOT NULL,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA EMAIL----------------------------
Create table Email(
       Email Varchar2(50) Constraint Email_nn NOT Null,
       Identification Varchar2(20) Constraint Email_Identification_nn NOT Null,
       created_by VARCHAR(20),
       creation_date date,
        last_modification_by VARCHAR(20),
        last_modification_date DATE
);

--------------CREACION TABLA TELEFONO----------------------------
Create table Telephone(
       Telephone Varchar(15) Constraint Telephone_nn NOT Null,
       Identification Varchar2(20) Constraint Telephone_Identification_nn NOT Null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE 
);

--------------CREACION TABLA PROPUESTA----------------------------
create table Proposal (
       id_Proposal number(5)CONSTRAINT id_Proposal_nn NOT null,
       Proposal_name varchar2(100)CONSTRAINT Proposal_name_nn NOT null,
       proposal_description varchar2(100)CONSTRAINT proposal_description_nn NOT null,
       budget number(20) constraint proposal_budget_nn NOT NULL,
       vote number(10),
       proposal_Date DATE constraint proposal_date_nn NOT NULL,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA COMENTARIO (PARA LA PROPUESTA)----------------------------
create table Proposal_comment (
       id_comment number(5)CONSTRAINT id_comment_nn NOT null,
       comment_description varchar2(500)CONSTRAINT comment_description_nn NOT null,
       comment_date DATE CONSTRAINT comment_date_nn NOT null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA PARAMETRO----------------------------
create table parameter (
       id_parameter number(5)CONSTRAINT id_parameter_nn NOT null,
       parameter_name varchar2(20)CONSTRAINT parameter_name__nn NOT null,
       parameter_value number (10) CONSTRAINT parameter_value_nn NOT null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);


-------------------CREACIÓN TABLAS DE RELACIONES 
--------------------------EN EL SISTEMA




--------------CREACION TABLA NACIONALIDAD X CANTON----------------------------
create table nationality_x_person (
       id_nationality number(5),
       id_person varchar2 (20),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA PROPUESTA X PERSONA----------------------------
create table person_x_proposal (
       id_proposal number(5),
       id_person varchar2(20),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA PROPUESTA X CATEGORIA----------------------------
create table proposal_x_category (
       id_proposal number(5),
       id_category number(5),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA CATEGORIA X PERSONA----------------------------
create table category_x_person (
       id_category number(5),
       id_person varchar2(20),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA PERSONA X COMENTARIO----------------------------
create table person_x_comment (
       id_comment number(5),
       id_person varchar2(20),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA COMENTARIO X PROPUESTA----------------------------
create table proposal_x_comment (
       id_proposal number(5),
       id_comment number (5),
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);

--------------CREACION TABLA VOTO----------------------------
create table vote (
       id_proposal number(5)CONSTRAINT id_vote_proposal_nn NOT null,
       id_person varchar2(20)CONSTRAINT id_vote_person_nn NOT null,
       created_by VARCHAR(20),
       creation_date date,
       last_modification_by VARCHAR(20),
       last_modification_date DATE
);
