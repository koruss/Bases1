--PERSON_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_PERSON  IS
       FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_COMMUNITY(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_PERSON(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_FIRST_LAST_NAME(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_BIRTHDATE(PNID_PERSON IN NUMBER)  RETURN DATE;
       FUNCTION GET_SECOND_LAST_NAME(PNID_PERSON IN NUMBER)  RETURN VARCHAR2;
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
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
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
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_NAME_PERSON(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNNAME_PERSON VARCHAR2(20);

        BEGIN
                  SELECT NAME_PERSON
                  INTO VNNAME_PERSON
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNNAME_PERSON);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_FIRST_LAST_NAME(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNFIRST_LAST_NAME VARCHAR2(20);

        BEGIN
                  SELECT FIRST_LAST_NAME
                  INTO VNFIRST_LAST_NAME
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNFIRST_LAST_NAME);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
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
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_SECOND_LAST_NAME(PNID_PERSON IN NUMBER) RETURN VARCHAR2
        IS
                 VNSECOND_LAST_NAME VARCHAR2(20);

        BEGIN
                  SELECT SECOND_LAST_NAME
                  INTO VNSECOND_LAST_NAME
                  FROM PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNSECOND_LAST_NAME);
        END;

       
END PKG_ADMIN_PERSON;
