--PERSON_X_COMMENT_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_PERSON_X_COMMENT  IS
       FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_COMMENT(PNID_PERSON IN NUMBER)  RETURN NUMBER;

END PKG_ADMIN_PERSON_X_COMMENT;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PERSON_X_COMMENT IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PERSON                      NUMBER(10);
         BEGIN
                  SELECT ID_PERSON  
                  INTO VNID_PERSON
                  FROM PERSON_X_COMMENT
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_PERSON);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_ID_COMMENT(PNID_PERSON IN NUMBER) RETURN NUMBER
        IS
                 VNID_COMMENT NUMBER(20);

        BEGIN
                  SELECT ID_COMMENT
                  INTO VNID_COMMENT
                  FROM PERSON_X_COMMENT
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_COMMENT);
        END;
       
END PKG_ADMIN_PERSON_X_COMMENT;
