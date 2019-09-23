--BINNACLE_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_BINNACLE  IS
       FUNCTION GET_ID_BINNACLE(PNID_BINNACLE IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PERSON(PNID_BINNACLE IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DATE_CHANGE(PNID_BINNACLE IN NUMBER)  RETURN DATE;
       FUNCTION GET_PASSWORD_USER(PNID_BINNACLE IN NUMBER)  RETURN VARCHAR2;
END PKG_ADMIN_BINNACLE;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_BINNACLE IS
        --FUNCTION GET_ID_BINNACLE IMPLEMENTATION
        FUNCTION GET_ID_BINNACLE(PNID_BINNACLE IN NUMBER)  RETURN NUMBER
         IS
                  VNID_BINNACLE                        NUMBER(10);
         BEGIN
                  SELECT ID_BINNACLE
                  INTO VNID_BINNACLE
                  FROM BINNACLE
                  WHERE ID_BINNACLE=PNID_BINNACLE;
                  RETURN (VNID_BINNACLE);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_BINNACLE IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PERSON                        NUMBER(10);
         BEGIN
                  SELECT ID_PERSON
                  INTO VNID_PERSON
                  FROM BINNACLE
                  WHERE ID_BINNACLE=PNID_BINNACLE;
                  RETURN (VNID_PERSON);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_DATE_CHANGE IMPLEMENTATION
        FUNCTION GET_DATE_CHANGE(PNID_BINNACLE IN NUMBER) RETURN DATE
        IS
                 VNDATE_CHANGE DATE;

        BEGIN
                 SELECT DATE_CHANGE
                 INTO VNDATE_CHANGE
                 FROM BINNACLE
                 WHERE ID_BINNACLE=PNID_BINNACLE;
                   
                 RETURN (VNDATE_CHANGE);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_DATE_CHANGE IMPLEMENTATION
        FUNCTION GET_PASSWORD_USER(PNID_BINNACLE IN NUMBER) RETURN VARCHAR2
        IS
                 VNPASSWORD_USER VARCHAR2;

        BEGIN
                 SELECT PASSWORD_USER_BIN
                 INTO VNPASSWORD_USER
                 FROM BINNACLE
                 WHERE ID_BINNACLE=PNID_BINNACLE;
                   
                 RETURN (VNPASSWORD_USER);
        END;

       
END PKG_ADMIN_BINNACLE;
