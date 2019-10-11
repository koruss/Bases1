CREATE OR REPLACE PACKAGE PKG_ADMIN_NATIONALITY  IS
       FUNCTION GET_ID_NATIONALITY(PNNATIONALITY_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_NAME_NATIONALITY(PNID_NATIONALITY IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE INSERT_NATIONALITY(PNNATIONALITY_NAME VARCHAR2);
       PROCEDURE SET_NAME_NATIONALITY(PNID_NATIONALITY NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE DELETE_ALL_NATIONALITY(PNID_NATIONALITY NUMBER DEFAULT NULL);
       PROCEDURE GET_ALL_NATIONALITY(PRECORDSET OUT SYS_REFCURSOR, PNID_NATIONALITY 
       IN number default null);
END PKG_ADMIN_NATIONALITY;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_NATIONALITY IS
       
       PROCEDURE DELETE_ALL_NATIONALITY (pnId_Nationality IN NUMBER DEFAULT NULL) AS
         vmError exception;
         begin
            DELETE FROM NATIONALITY WHERE ID_NATIONALITY = NVL(PNID_NATIONALITY,ID_NATIONALITY);
            IF SQL%NOTFOUND THEN
              RAISE VMERROR;
            END IF;
            EXCEPTION
              WHEN VMERROR THEN
                DBMS_OUTPUT.PUT_LINE('The element doesn�t exists in the database');
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
        END DELETE_ALL_NATIONALITY;
        
        --FUNCTION GET_ID_NATIONALITY IMPLEMENTATION
        FUNCTION GET_ID_NATIONALITY(PNNATIONALITY_NAME IN VARCHAR2)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_NATIONALITY   NUMBER(10);
         BEGIN
                  SELECT ID_NATIONALITY
                  INTO VNID_NATIONALITY
                  FROM NATIONALITY
                  WHERE NATIONALITY_NAME=PNNATIONALITY_NAME;
                  RETURN (VNID_NATIONALITY);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_NATIONALITY IMPLEMENTATION
        FUNCTION GET_NAME_NATIONALITY(PNID_NATIONALITY IN NUMBER) RETURN VARCHAR2
        IS
        VMENERROR        EXCEPTION;
                 VNNAME_NATIONALITY  VARCHAR(30);

        BEGIN
           IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                 DBMS_OUTPUT.PUT_LINE (SQLERRM);    
                 
                  SELECT NATIONALITY_NAME
                  INTO VNNAME_NATIONALITY
                  FROM NATIONALITY
                  WHERE ID_NATIONALITY=PNID_NATIONALITY;
                  RETURN (VNNAME_NATIONALITY);
                  /*EXCEPTION 
                         WHEN NO_DATA_FOUND THEN
                           RAISE_APPLICATION_ERROR(-20000, 'ID: ' ||PNID_NATIONALITY|| ' NOT FOUND');
              */           
        END;

        PROCEDURE INSERT_NATIONALITY(PNNATIONALITY_NAME VARCHAR2) IS
      VMENERROR        EXCEPTION;

           BEGIN
             INSERT INTO NATIONALITY(ID_NATIONALITY, NATIONALITY_NAME)
             VALUES (S_NATIONALITY.NEXTVAL, PNNATIONALITY_NAME);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_NATIONALITY;
           
           
         
         
    PROCEDURE SET_NAME_NATIONALITY(PNID_NATIONALITY NUMBER, PNNEW_VALUE VARCHAR2) IS
      VMENERROR        EXCEPTION;
         BEGIN
            UPDATE NATIONALITY SET NATIONALITY_NAME= PNNEW_VALUE WHERE ID_NATIONALITY=PNID_NATIONALITY;
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;

            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_NATIONALITY;
         
      PROCEDURE GET_ALL_NATIONALITY(PRECORDSET OUT SYS_REFCURSOR, PNID_NATIONALITY IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT *
              FROM NATIONALITY
              WHERE ID_NATIONALITY = NVL(PNID_NATIONALITY, ID_NATIONALITY);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_NATIONALITY;
          
END PKG_ADMIN_NATIONALITY;
