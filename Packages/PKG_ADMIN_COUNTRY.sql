CREATE OR REPLACE PACKAGE PKG_ADMIN_COUNTRY  IS
       FUNCTION GET_ID_COUNTRY(PNCOUNTRY_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_NAME_COUNTRY(PNID_COUNTRY IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE INSERT_COUNTRY(COUNTRY_NAME VARCHAR2);
       --PROCEDURE SET_ID_COUNTRY(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_NAME_COUNTRY(PNID_COUNTRY NUMBER, NEW_VALUE VARCHAR2);
       PROCEDURE GET_ALL_COUNTRY(PRECORDSET OUT SYS_REFCURSOR, PNID_COUNTRY IN number default null);
END PKG_ADMIN_COUNTRY;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_COUNTRY IS
        --FUNCTION GET_ID_COUNTRY IMPLEMENTATION
        FUNCTION GET_ID_COUNTRY(PNCOUNTRY_NAME IN VARCHAR2)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_COUNTRY   NUMBER(10);
         BEGIN
                  SELECT ID_COUNTRY
                  INTO VNID_COUNTRY
                  FROM COUNTRY
                  WHERE COUNTRY_NAME=PNCOUNTRY_NAME;
                  RETURN (VNID_COUNTRY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_COUNTRY IMPLEMENTATION
        FUNCTION GET_NAME_COUNTRY(PNID_COUNTRY IN NUMBER) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNNAME_COUNTRY VARCHAR2(50);

        BEGIN
                  SELECT COUNTRY_NAME
                  INTO VNNAME_COUNTRY
                  FROM COUNTRY
                  WHERE ID_COUNTRY=PNID_COUNTRY;
                  RETURN (VNNAME_COUNTRY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_COUNTRY(COUNTRY_NAME VARCHAR2) is
         VMENERROR                             EXCEPTION;

           BEGIN
             INSERT INTO COUNTRY(ID_COUNTRY, COUNTRY_NAME)
             VALUES (s_country.nextval, COUNTRY_NAME);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_COUNTRY;

       ---------------------------------------------------------------------------------
       --PROCEDURE SET_ID_COUNTRY(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
       --  BEGIN
       --      UPDATE COUNTRY SET ID_COUNTRY= NEW_VALUE WHERE ID_COUNTRY=OLD_VALUE;
       --  END SET_ID_COUNTRY;


       ---------------------------------------------------------------------------------
       PROCEDURE SET_NAME_COUNTRY(PNID_COUNTRY NUMBER, NEW_VALUE VARCHAR2) IS
         VMENERROR                             EXCEPTION;
         BEGIN
             UPDATE COUNTRY SET COUNTRY_NAME= NEW_VALUE WHERE ID_COUNTRY=PNID_COUNTRY;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_COUNTRY;


      PROCEDURE GET_ALL_COUNTRY(PRECORDSET OUT SYS_REFCURSOR, PNID_COUNTRY IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT *
              FROM COUNTRY
              WHERE ID_COUNTRY = NVL(PNID_COUNTRY, ID_COUNTRY);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_COUNTRY;

END PKG_ADMIN_COUNTRY;
