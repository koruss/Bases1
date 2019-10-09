CREATE OR REPLACE PACKAGE PKG_ADMIN_CANTON IS
       FUNCTION GET_ID_CANTON(PNCANTON_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_ID_PROVINCE(PNID_CANTON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_CANTON(PNID_CANTON IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE INSERT_CANTON(PNCANTON_NAME VARCHAR2,PNID_PROVINCE NUMBER);
       PROCEDURE SET_NAME_CANTON(PNID_CANTON NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE GET_ALL_CANTON(PRECORDSET OUT SYS_REFCURSOR, PNID_CANTON 
        IN number default null);
       PROCEDURE DELETE_ALL_CANTON (pnId_CANTON IN NUMBER DEFAULT NULL);
END PKG_ADMIN_CANTON;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_CANTON IS
        --FUNCTION GET_ID_CANTON IMPLEMENTATION
        FUNCTION GET_ID_CANTON(PNCANTON_NAME IN VARCHAR2)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_CANTON    NUMBER(10);
         BEGIN
                  SELECT ID_CANTON
                  INTO VNID_CANTON
                  FROM CANTON
                  WHERE CANTON_NAME=PNCANTON_NAME;
                  RETURN (VNID_CANTON);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PROVINCE IMPLEMENTATION
        FUNCTION GET_ID_PROVINCE(PNID_CANTON IN NUMBER)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_PROVINCE    NUMBER(10);
         BEGIN
                  SELECT ID_PROVINCE
                  INTO VNID_PROVINCE
                  FROM CANTON
                  WHERE ID_CANTON=PNID_CANTON;
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
        --FUNCTION GET_NAME_CANTON IMPLEMENTATION
        FUNCTION GET_NAME_CANTON(PNID_CANTON IN NUMBER) RETURN VARCHAR2
        IS
                VMENERROR      EXCEPTION;
                 VNNAME_CANTON VARCHAR2(50);

        BEGIN
                  SELECT CANTON_NAME
                  INTO VNNAME_CANTON
                  FROM CANTON
                  WHERE ID_CANTON=PNID_CANTON;
                  RETURN (VNNAME_CANTON);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;
        
        -------------------------------------------------------------------------------
        --PROCEDURE PROC_INSERT_CANTON IMPLEMENTATION
        PROCEDURE INSERT_CANTON(PNCANTON_NAME VARCHAR2, PNID_PROVINCE NUMBER) IS
           VMENERROR EXCEPTION;
           BEGIN
             INSERT INTO CANTON(ID_CANTON,CANTON_NAME,ID_PROVINCE)
             VALUES (S_CANTON.NEXTVAL,PNCANTON_NAME,PNID_PROVINCE);
             
            IF SQL%NOTFOUND THEN
               RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
           END INSERT_CANTON;
         
         
       PROCEDURE SET_NAME_CANTON(PNID_CANTON NUMBER, PNNEW_VALUE VARCHAR2) IS
         VMENERROR  EXCEPTION;
         BEGIN
             UPDATE CANTON SET CANTON_NAME= PNNEW_VALUE WHERE ID_CANTON=PNID_CANTON;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_CANTON;
         
      PROCEDURE GET_ALL_CANTON(PRECORDSET OUT SYS_REFCURSOR, PNID_CANTON IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT ID_CANTON,CANTON_NAME,ID_PROVINCE
              FROM CANTON
              WHERE ID_CANTON = NVL(PNID_CANTON, ID_CANTON);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_CANTON;
          
       PROCEDURE DELETE_ALL_CANTON (pnId_CANTON IN NUMBER DEFAULT NULL) AS
         vmError exception;
         begin
            DELETE FROM CANTON WHERE ID_CANTON = NVL(PNID_CANTON,ID_CANTON);
            IF SQL%NOTFOUND THEN
              RAISE VMERROR;
            END IF;
            EXCEPTION
              WHEN VMERROR THEN
                DBMS_OUTPUT.PUT_LINE('The element doesn´t exists in the database');
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
        END DELETE_ALL_CANTON;

END PKG_ADMIN_CANTON;


