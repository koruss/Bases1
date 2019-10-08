CREATE OR REPLACE PACKAGE PKG_ADMIN_CATEGORY_X_PERSON  IS
       --FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_CATEGORY(PNID_PERSON IN VARCHAR2)  RETURN NUMBER;
       PROCEDURE INSERT_CATEGORY_X_PERSON(PNID_CATEGORY NUMBER,PNID_PERSON VARCHAR2);
       --PROCEDURE SET_ID_PERSON(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       PROCEDURE SET_ID_CATEGORY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);

END PKG_ADMIN_CATEGORY_X_PERSON;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_CATEGORY_X_PERSON IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        --FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER
         --IS
         --         VNID_PERSON                        NUMBER(10);
         --BEGIN
         --         SELECT ID_PERSON
         --         INTO VNID_PERSON
         --         FROM CATEGORY_X_PERSON
         --         WHERE ID_PERSON=PNID_PERSON;
         --         RETURN (VNID_PERSON);
         --END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_ID_CATEGORY(PNID_PERSON IN VARCHAR2) RETURN NUMBER
        IS
                 VMENERROR      EXCEPTION;
                 VNID_CATEGORY NUMBER(10);

        BEGIN
                  SELECT ID_CATEGORY
                  INTO VNID_CATEGORY
                  FROM CATEGORY_X_PERSON
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_CATEGORY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

       PROCEDURE INSERT_CATEGORY_X_PERSON(PNID_CATEGORY NUMBER, PNID_PERSON VARCHAR2) IS
         VMENERROR               EXCEPTION;            

           BEGIN
             INSERT INTO CATEGORY_X_PERSON(ID_CATEGORY, ID_PERSON)
             VALUES (PNID_CATEGORY, PNID_PERSON);
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_CATEGORY_X_PERSON;


       --PROCEDURE SET_ID_PERSON(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
       --  BEGIN
       --      UPDATE CATEGORY_X_PERSON SET ID_PERSON= PNNEW_VALUE WHERE ID_PERSON=PNOLD_VALUE;
       --  END SET_ID_PERSON;

       PROCEDURE SET_ID_CATEGORY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
         VMENERROR               EXCEPTION;            
         BEGIN
             UPDATE CATEGORY_X_PERSON SET ID_CATEGORY= PNNEW_VALUE WHERE ID_CATEGORY=PNOLD_VALUE;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_ID_CATEGORY;
END PKG_ADMIN_CATEGORY_X_PERSON;
