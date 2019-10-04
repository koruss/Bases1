CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPOSAL_X_CATEGORY IS
       FUNCTION GET_ID_CATEGORY(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       --FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       PROCEDURE INSERT_PROP_X_CATEGORY(PNID_PROPOSAL NUMBER, PNID_CATEGORY NUMBER);
       PROCEDURE SET_ID_CATEGORY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       --PROCEDURE SET_ID_PROPOSAL(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);

END PKG_ADMIN_PROPOSAL_X_CATEGORY;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPOSAL_X_CATEGORY IS
        --FUNCTION GET_ID_CATEGORY_FAV IMPLEMENTATION
        FUNCTION GET_ID_CATEGORY(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_CATEGORY   NUMBER(10);
         BEGIN
                  SELECT ID_CATEGORY
                  INTO VNID_CATEGORY
                  FROM PROPOSAL_X_CATEGORY
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNID_CATEGORY);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PROPOSAL IMPLEMENTATION
        FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                  VMENERROR      EXCEPTION;
                 VNID_PROPOSAL NUMBER(20);

        BEGIN
                  SELECT ID_PROPOSAL
                  INTO VNID_PROPOSAL
                  FROM PROPOSAL_X_CATEGORY
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNID_PROPOSAL);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_PROP_X_CATEGORY(PNID_PROPOSAL NUMBER, PNID_CATEGORY NUMBER) IS

           BEGIN
             INSERT INTO PROPOSAL_X_CATEGORY(ID_PROPOSAL, ID_CATEGORY)
             VALUES (PNID_PROPOSAL, PNID_CATEGORY);

           END INSERT_PROP_X_CATEGORY;


           ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_CATEGORY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
      VMENERROR                           EXCEPTION;
         BEGIN
             UPDATE PROPOSAL_X_CATEGORY SET ID_CATEGORY= PNNEW_VALUE WHERE ID_CATEGORY=PNOLD_VALUE;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_ID_CATEGORY;


         ---------------------------------------------------------------------------------
    --PROCEDURE GET_ID_PROPOSAL(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
    --     BEGIN
    --         UPDATE PROPOSAL_X_CATEGORY SET ID_PROPOSAL= PNNEW_VALUE WHERE ID_PROPOSAL=PNOLD_VALUE;
    --     END GET_ID_PROPOSAL;
END PKG_ADMIN_PROPOSAL_X_CATEGORY;
