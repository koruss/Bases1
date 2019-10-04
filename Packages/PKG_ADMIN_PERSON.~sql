CREATE OR REPLACE PACKAGE PKG_ADMIN_PERSON  IS
       FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_COMMUNITY(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_PERSON(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_FIRST_LAST_NAME(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_BIRTHDATE(PNID_PERSON IN NUMBER)  RETURN DATE;
       FUNCTION GET_SECOND_LAST_NAME(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE PROC_INSERT_PERSON(ID_PERSON NUMBER,ID_COMMUNITY NUMBER,NAME_PERSON VARCHAR2,
         FIRST_LAST_NAME VARCHAR2,BIRTHDATE DATE, SECOND_LAST_NAME VARCHAR2);
       PROCEDURE SET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_ID_COMMUNITY(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_NAME_PERSON(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
       PROCEDURE SET_FIRST_LAST_NAME(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
       PROCEDURE SET_BIRTHDATE(NEW_VALUE DATE, OLD_VALUE DATE);
       PROCEDURE SET_SECOND_LAST_NAME(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
END PKG_ADMIN_PERSON;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PERSON IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PERSON                      NUMBER(10);
         BEGIN
                  SELECT ID_PERSON
                  INTO VNID_PERSON
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_PERSON);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_COMMUNITY IMPLEMENTATION
        FUNCTION GET_ID_COMMUNITY(PNID_PERSON IN NUMBER) RETURN NUMBER
        IS
                 VNID_COMMUNITY NUMBER(20);

        BEGIN
                  SELECT ID_COMMUNITY
                  INTO VNID_COMMUNITY
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_COMMUNITY);
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_PERSON IMPLEMENTATION
        FUNCTION GET_NAME_PERSON(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNNAME_PERSON VARCHAR2(50);

        BEGIN
                  SELECT NAME_PERSON
                  INTO VNNAME_PERSON
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNNAME_PERSON);
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_FIRST_LAST_NAME IMPLEMENTATION
        FUNCTION GET_FIRST_LAST_NAME(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNFIRST_LAST_NAME VARCHAR2(50);

        BEGIN
                  SELECT FIRST_LAST_NAME
                  INTO VNFIRST_LAST_NAME
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNFIRST_LAST_NAME);
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_BIRTHDATE IMPLEMENTATION
        FUNCTION GET_BIRTHDATE(PNID_PERSON IN NUMBER) RETURN DATE
        IS
                 VNBIRTHDATE DATE;

        BEGIN
                  SELECT BIRTHDATE
                  INTO VNBIRTHDATE
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNBIRTHDATE);
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_SECOND_LAST_NAME IMPLEMENTATION
        FUNCTION GET_SECOND_LAST_NAME(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNSECOND_LAST_NAME VARCHAR2(50);

        BEGIN
                  SELECT SECOND_LAST_NAME
                  INTO VNSECOND_LAST_NAME
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNSECOND_LAST_NAME);
        END;

        PROCEDURE PROC_INSERT_PERSON(ID_PERSON NUMBER,ID_COMMUNITY NUMBER,NAME_PERSON VARCHAR2,
                 FIRST_LAST_NAME VARCHAR2,BIRTHDATE DATE, SECOND_LAST_NAME VARCHAR2) IS
         
           BEGIN
             INSERT INTO PERSON(ID_PERSON,ID_COMMUNITY,NAME_PERSON,FIRST_LAST_NAME, BIRTHDATE,SECOND_LAST_NAME)
             VALUES (ID_PERSON,ID_COMMUNITY,NAME_PERSON,FIRST_LAST_NAME, BIRTHDATE,SECOND_LAST_NAME);
             
           END PROC_INSERT_PERSON;
           
           ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE PERSON SET ID_PERSON= NEW_VALUE WHERE ID_PERSON=OLD_VALUE;             
         END SET_ID_PERSON;
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_COMMUNITY(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE PERSON SET ID_COMMUNITY= NEW_VALUE WHERE ID_COMMUNITY=OLD_VALUE;             
         END SET_ID_COMMUNITY;
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_NAME_PERSON(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         BEGIN
            UPDATE PERSON SET NAME_PERSON= NEW_VALUE WHERE NAME_PERSON=OLD_VALUE;             
         END SET_NAME_PERSON;
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_FIRST_LAST_NAME(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         BEGIN
             UPDATE PERSON SET FIRST_LAST_NAME= NEW_VALUE WHERE FIRST_LAST_NAME=OLD_VALUE;             
         END SET_FIRST_LAST_NAME;
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_BIRTHDATE(NEW_VALUE DATE, OLD_VALUE DATE) IS
         BEGIN
             UPDATE PERSON SET BIRTHDATE= NEW_VALUE WHERE BIRTHDATE=OLD_VALUE;             
         END SET_BIRTHDATE;
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_SECOND_LAST_NAME(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         BEGIN
             UPDATE PERSON SET SECOND_LAST_NAME= NEW_VALUE WHERE SECOND_LAST_NAME=OLD_VALUE;             
         END SET_SECOND_LAST_NAME;
         
         
END PKG_ADMIN_PERSON;
