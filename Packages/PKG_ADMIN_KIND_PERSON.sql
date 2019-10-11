CREATE OR REPLACE PACKAGE PKG_ADMIN_EMAIL  IS
       FUNCTION GET_EMAIL(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2;
       FUNCTION GET_ID_PERSON(PNEMAIL IN VARCHAR2)  RETURN VARCHAR2;
       PROCEDURE INSERT_EMAIL(PNEMAIL VARCHAR2,PNIDENTIFICATION VARCHAR2);
       PROCEDURE SET_EMAIL(PNIDENTIFICATION NUMBER, PNNEW_VALUE VARCHAR2);
      PROCEDURE GET_ALL_EMAIL(PRECORDSET OUT SYS_REFCURSOR, PNIDENTIFICATION IN VARCHAR default null);
END PKG_ADMIN_EMAIL;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_EMAIL IS

        -------------------------------------------------------------------------------
        --FUNCTION GET_MAIL IMPLEMENTATION
        FUNCTION GET_EMAIL(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2
         IS
                 VMENERROR      EXCEPTION;
                  VNNAME_EMAIL   VARCHAR2(50);
         BEGIN
                  SELECT EMAIL
                  INTO VNNAME_EMAIL
                  FROM EMAIL
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNNAME_EMAIL);
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
        FUNCTION GET_ID_PERSON(PNEMAIL IN VARCHAR2) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNID_PERSON NUMBER(20);

        BEGIN
                  SELECT IDENTIFICATION
                  INTO VNID_PERSON
                  FROM EMAIL
                  WHERE EMAIL=PNEMAIL;
                  RETURN (VNID_PERSON);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_EMAIL(PNEMAIL VARCHAR2,PNIDENTIFICATION VARCHAR2) IS
                VMENERROR        EXCEPTION;

           BEGIN
             INSERT INTO EMAIL(EMAIL,IDENTIFICATION)
             VALUES (PNEMAIL,PNIDENTIFICATION);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_EMAIL;


         ---------------------------------------------------------------------------------
         PROCEDURE SET_EMAIL(PNIDENTIFICATION NUMBER, PNNEW_VALUE VARCHAR2) IS
           VMENERROR                          EXCEPTION;
           BEGIN
               UPDATE EMAIL SET EMAIL= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
               IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
           END SET_EMAIL;

          
           
      PROCEDURE GET_ALL_EMAIL(PRECORDSET OUT SYS_REFCURSOR, PNIDENTIFICATION IN VARCHAR default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT *
              FROM EMAIL
              WHERE IDENTIFICATION = NVL(PNIDENTIFICATION, IDENTIFICATION);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_EMAIL;
END PKG_ADMIN_EMAIL;
