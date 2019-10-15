CREATE OR REPLACE PACKAGE PKG_ADMIN_PROVINCE  IS
       FUNCTION GET_ID_PROVINCE(PNPROVINCE_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_ID_COUNTRY(PNID_PROVINCE IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_PROVINCE(PNID_PROVINCE IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE INSERT_PROVINCE(PNPROVINCE_NAME VARCHAR2,PNID_COUNTRY NUMBER);
       PROCEDURE SET_ID_COUNTRY(PNID_PROVINCE NUMBER, PNNEW_VALUE NUMBER);
       PROCEDURE SET_NAME_PROVINCE(PNID_PROVINCE NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE GET_ALL_PROVINCE(PRECORDSET OUT SYS_REFCURSOR, PNID_PROVINCE 
       IN number default null);
       PROCEDURE DELETE_ALL_PROVINCE (pnId_PROVINCE IN NUMBER DEFAULT NULL);
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
                           RETURN -1;
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END GET_ID_PROVINCE;

        -------------------------------------------------------------------------------
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
         END GET_ID_COUNTRY;

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
        END GET_NAME_PROVINCE;

        PROCEDURE INSERT_PROVINCE(PNPROVINCE_NAME VARCHAR2, PNID_COUNTRY NUMBER) IS
      VMENERROR                            EXCEPTION;

           BEGIN
             INSERT INTO PROVINCE(ID_PROVINCE,PROVINCE_NAME,ID_COUNTRY)
             VALUES (S_PROVINCE.NEXTVAL,PNPROVINCE_NAME,PNID_COUNTRY);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_PROVINCE;
           
           
           ---------------------------------------------------------------------------------

         
         
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
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
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
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_PROVINCE;
         
      PROCEDURE GET_ALL_PROVINCE(PRECORDSET OUT SYS_REFCURSOR, PNID_PROVINCE IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT *
              FROM PROVINCE
              WHERE ID_COUNTRY = NVL(PNID_PROVINCE, ID_COUNTRY);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_PROVINCE;
          
       PROCEDURE DELETE_ALL_PROVINCE (pnId_PROVINCE IN NUMBER DEFAULT NULL) AS
         vmError exception;
         begin
            DELETE FROM PROVINCE WHERE ID_PROVINCE = NVL(PNID_PROVINCE,ID_PROVINCE);
            IF SQL%NOTFOUND THEN
              RAISE VMERROR;
            END IF;
            EXCEPTION
              WHEN VMERROR THEN
                DBMS_OUTPUT.PUT_LINE('The element doesn´t exists in the database');
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
        END DELETE_ALL_PROVINCE;
          
END PKG_ADMIN_PROVINCE;
