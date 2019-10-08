CREATE OR REPLACE PACKAGE PKG_ADMIN_BINNACLE  IS
       FUNCTION GET_ID_BINNACLE(PNID_PERSON IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_ID_PERSON(PNID_BINNACLE IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DATE_CHANGE(PNID_BINNACLE IN NUMBER)  RETURN DATE;
       PROCEDURE GET_ALL_BINNACLE(PRECORDSET OUT SYS_REFCURSOR, 
       PNID_BINNACLE IN number default null);
END PKG_ADMIN_BINNACLE;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_BINNACLE IS
        --FUNCTION GET_ID_BINNACLE IMPLEMENTATION
        FUNCTION GET_ID_BINNACLE(PNID_PERSON VARCHAR2)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_BINNACLE  NUMBER(10);
         BEGIN
                  SELECT ID_BINNACLE
                  INTO VNID_BINNACLE
                  FROM BINNACLE
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_BINNACLE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_BINNACLE IN NUMBER)  RETURN NUMBER
         IS
                  VMENERROR                          EXCEPTION;
                  VNID_PERSON                        NUMBER(10);
         BEGIN
                  SELECT ID_PERSON
                  INTO VNID_PERSON
                  FROM BINNACLE
                  WHERE ID_BINNACLE=PNID_BINNACLE;
                  RETURN (VNID_PERSON);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

         
        -------------------------------------------------------------------------------
        --FUNCTION GET_DATE_CHANGE IMPLEMENTATION
        FUNCTION GET_DATE_CHANGE(PNID_BINNACLE IN NUMBER) RETURN DATE
        IS
                 VMENERROR      EXCEPTION;
                 VNDATE_CHANGE  DATE;

        BEGIN
                 SELECT PASS_CHANGE_DATE
                 INTO VNDATE_CHANGE
                 FROM BINNACLE
                 WHERE ID_BINNACLE=PNID_BINNACLE;

                 RETURN (VNDATE_CHANGE);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;       
   
       --------------------------------------------------------------------------------
       --PROCEDURE GET_ALL_BINNACLE IMPLEMENTATION
       PROCEDURE GET_ALL_BINNACLE(PRECORDSET OUT SYS_REFCURSOR, PNID_BINNACLE IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT ID_BINNACLE, ID_PERSON, PREVIOUS_PASSWORD,CURRENT_PASSWORD, PASS_CHANGE_DATE
              FROM BINNACLE
              WHERE ID_BINNACLE = NVL(PNID_BINNACLE, ID_BINNACLE);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_BINNACLE;       

END PKG_ADMIN_BINNACLE;
