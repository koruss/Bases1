CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPOSAL_X_COMMENT IS
       --FUNCTION GET_ID_COMMENT(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PROPOSAL(PNID_COMMENT IN NUMBER)  RETURN NUMBER;
       PROCEDURE INSERT_PROP_X_COMMENT(PNID_PROPOSAL NUMBER, PNID_COMMENT NUMBER);
       --PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       --PROCEDURE SET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER);

END PKG_ADMIN_PROPOSAL_X_COMMENT;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPOSAL_X_COMMENT IS
        --FUNCTION GET_ID_COMMENT IMPLEMENTATION
        --FUNCTION GET_ID_COMMENT(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER
        -- IS
        --          VNID_COMMENT                     NUMBER(10);
        -- BEGIN
        --          SELECT ID_COMMENT
        --          INTO VNID_COMMENT
        --          FROM PROPORSAL_X_COMMENT
        --          WHERE ID_PROPORSAL=PNID_PROPOSAL;
        --          RETURN (VNID_COMMENT);
        -- END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PROPOSAL IMPLEMENTATION
        FUNCTION GET_ID_PROPOSAL(PNID_COMMENT IN NUMBER) RETURN NUMBER
        IS
                  VMENERROR      EXCEPTION;
                 VNID_PROPOSAL NUMBER(20);

        BEGIN
                  SELECT ID_PROPOSAL
                  INTO VNID_PROPOSAL
                  FROM PROPOSAL_X_COMMENT
                  WHERE ID_COMMENT=PNID_COMMENT;
                  RETURN (VNID_PROPOSAL);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_PROP_X_COMMENT(PNID_PROPOSAL NUMBER, PNID_COMMENT NUMBER) IS
      VMENERROR                            EXCEPTION;

           BEGIN
             INSERT INTO PROPOSAL_X_COMMENT(ID_PROPOSAL, ID_COMMENT)
             VALUES (PNID_PROPOSAL, PNID_COMMENT);
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_PROP_X_COMMENT;


           ---------------------------------------------------------------------------------
    --PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
    --     BEGIN
    --         UPDATE PROPORSAL_X_COMMENT SET ID_COMMENT= NEW_VALUE WHERE ID_COMMENT=OLD_VALUE;
    --     END SET_ID_COMMENT;


         ---------------------------------------------------------------------------------
    --PROCEDURE SET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
    --     BEGIN
    --         UPDATE PROPORSAL_X_COMMENT SET ID_PROPORSAL= NEW_VALUE WHERE ID_PROPORSAL=OLD_VALUE;
    --     END SET_ID_PROPOSAL;
END PKG_ADMIN_PROPOSAL_X_COMMENT;
