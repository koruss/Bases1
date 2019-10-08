CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPORSAL_X_COMMENT IS
       FUNCTION GET_ID_COMMENT(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       PROCEDURE PROC_INSERT_PROP_X_COMMENT(ID_PROPOSAL NUMBER, ID_COMMENT NUMBER);
       PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER);

END PKG_ADMIN_PROPORSAL_X_COMMENT;



CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPORSAL_X_COMMENT IS
        --FUNCTION GET_ID_COMMENT IMPLEMENTATION
        FUNCTION GET_ID_COMMENT(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_COMMENT                     NUMBER(10);
         BEGIN
                  SELECT ID_COMMENT
                  INTO VNID_COMMENT
                  FROM PROPOSAL_X_COMMENT
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNID_COMMENT);
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
                  FROM PROPOSAL_X_COMMENT
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

        PROCEDURE PROC_INSERT_PROP_X_COMMENT(ID_PROPOSAL NUMBER, ID_COMMENT NUMBER) IS
         
           BEGIN
             INSERT INTO PROPOSAL_X_COMMENT(ID_PROPOSAL, ID_COMMENT)
             VALUES (ID_PROPOSAL, ID_COMMENT);
             
           END PROC_INSERT_PROP_X_COMMENT;
           
           
           ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
              VMENERROR                EXCEPTION;
         BEGIN
             UPDATE PROPOSAL_X_COMMENT SET ID_COMMENT= NEW_VALUE WHERE ID_COMMENT=OLD_VALUE;             
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_ID_COMMENT;
         
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
      VMENERROR                         EXCEPTION;
         BEGIN
             UPDATE PROPOSAL_X_COMMENT SET ID_PROPOSAL= NEW_VALUE WHERE ID_PROPOSAL=OLD_VALUE;             
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_ID_PROPOSAL;
END PKG_ADMIN_PROPORSAL_X_COMMENT;
