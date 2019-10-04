CREATE OR REPLACE PACKAGE PKG_ADMIN_PROVINCE  IS
       FUNCTION GET_ID_PROVINCE(PNPROVINCE_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_ID_COUNTRY(PNID_PROVINCE IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_PROVINCE(PNID_PROVINCE IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE INSERT_PROVINCE(PNPROVINCE_NAME VARCHAR2,PNID_COUNTRY NUMBER);
       --PROCEDURE SET_ID_PROVINCE(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       PROCEDURE SET_ID_COUNTRY(PNID_PROVINCE NUMBER, PNNEW_VALUE NUMBER);
       PROCEDURE SET_NAME_PROVINCE(PNID_PROVINCE NUMBER, PNNEW_VALUE VARCHAR2);
END PKG_ADMIN_PROVINCE;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROVINCE IS
        --FUNCTION GET_ID_PROVINCE IMPLEMENTATION
        FUNCTION GET_ID_PROVINCE(PNPROVINCE_NAME IN VARCHAR2)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_PROVINCE  NUMBER(10);
         BEGIN
                  SELECT ID_PROVINCE
                  INTO VNID_PROVINCE
                  FROM PROVINCE
                  WHERE PROVINCE_NAME=PNPROVINCE_NAME;
                  RETURN (VNID_PROVINCE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_COUNTRY IMPLEMENTATION
        FUNCTION GET_ID_COUNTRY(PNID_PROVINCE IN NUMBER)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_COUNTRY    NUMBER(10);
         BEGIN
                  SELECT ID_COUNTRY
                  INTO VNID_COUNTRY
                  FROM PROVINCE
                  WHERE ID_PROVINCE=PNID_PROVINCE;
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
        --FUNCTION GET_NAME_PROVINCE IMPLEMENTATION
        FUNCTION GET_NAME_PROVINCE(PNID_PROVINCE IN NUMBER) RETURN VARCHAR2
        IS
                  VMENERROR      EXCEPTION;
                 VNNAME_PROVINCE VARCHAR2(30);

        BEGIN
                  SELECT PROVINCE_NAME
                  INTO VNNAME_PROVINCE
                  FROM PROVINCE
                  WHERE ID_PROVINCE=PNID_PROVINCE;
                  RETURN (VNNAME_PROVINCE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_PROVINCE(PNPROVINCE_NAME VARCHAR2, PNID_COUNTRY NUMBER) IS

           BEGIN
             INSERT INTO PROVINCE(ID_PROVINCE,PROVINCE_NAME,ID_COUNTRY)
             VALUES (S_PROVINCE.NEXTVAL,PNPROVINCE_NAME,PNID_COUNTRY);

           END INSERT_PROVINCE;


           ---------------------------------------------------------------------------------
    --PROCEDURE SET_ID_PROVINCE(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
    --     BEGIN
    --         UPDATE PROVINCE SET ID_PROVINCE= PNNEW_VALUE WHERE ID_PROVINCE=PNOLD_VALUE;
    --     END SET_ID_PROVINCE;


         ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_COUNTRY(PNID_PROVINCE NUMBER, PNNEW_VALUE NUMBER) IS
      VMENERROR                            EXCEPTION;
         BEGIN
             UPDATE PROVINCE SET ID_COUNTRY= PNNEW_VALUE WHERE ID_PROVINCE=PNID_PROVINCE;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_ID_COUNTRY;


         ---------------------------------------------------------------------------------
    PROCEDURE SET_NAME_PROVINCE(PNID_PROVINCE NUMBER, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                               EXCEPTION;
         BEGIN
             UPDATE PROVINCE SET PROVINCE_NAME= PNNEW_VALUE WHERE ID_PROVINCE=PNID_PROVINCE;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_NAME_PROVINCE;
END PKG_ADMIN_PROVINCE;
