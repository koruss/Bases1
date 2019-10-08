CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPOSAL  IS
       FUNCTION GET_ID_PROPOSAL(PNTITLE IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_TITLE(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_DESCRIPTION_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_BUDGET(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DATE_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN DATE;
       PROCEDURE INSERT_PROPOSAL(PNTITLE VARCHAR2 ,PNPROPOSAL_DESCRIPTION VARCHAR2,
         PNBUDGET NUMBER,PNPROPOSAL_DATE DATE);
       --PROCEDURE SET_ID_PROPOSAL(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       PROCEDURE SET_TITLE(PNID_PROPOSAL NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE SET_PROPOSAL_DESCRIPTION(PNID_PROPOSAL NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE SET_BUDGET(PNID_PROPOSAL NUMBER, PNNEW_VALUE NUMBER);
       PROCEDURE SET_VOTE(PNID_PROPOSAL NUMBER, PNNEW_VALUE NUMBER);
       PROCEDURE SET_PROPOSAL_DATE(PNID_PROPOSAL NUMBER, PNNEW_VALUE DATE);
END PKG_ADMIN_PROPOSAL;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPOSAL IS
        --FUNCTION GET_ID_PROPOSAL IMPLEMENTATION
        FUNCTION GET_ID_PROPOSAL(PNTITLE IN VARCHAR2)  RETURN NUMBER
         IS
                  VMENERROR      EXCEPTION;
                  VNID_PROPOSAL   NUMBER(10);
         BEGIN
                  SELECT ID_PROPOSAL
                  INTO VNID_PROPOSAL
                  FROM PROPOSAL
                  WHERE TITLE=PNTITLE;
                  RETURN (VNID_PROPOSAL);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_TITLE IMPLEMENTATION
        FUNCTION GET_TITLE(PNID_PROPOSAL IN NUMBER) RETURN VARCHAR2
        IS
                  VMENERROR      EXCEPTION;
                 VNTITLE VARCHAR2(100);

        BEGIN
                  SELECT TITLE
                  INTO VNTITLE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNTITLE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_PROPOSAL_DESCRIPTION IMPLEMENTATION
        FUNCTION GET_DESCRIPTION_PROPOSAL(PNID_PROPOSAL IN NUMBER) RETURN VARCHAR2
        IS
                  VMENERROR      EXCEPTION;
                 VNPROPOSAL_DESCRIPTION VARCHAR2(2000);

        BEGIN
                  SELECT PROPOSAL_DESCRIPTION
                  INTO VNPROPOSAL_DESCRIPTION
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNPROPOSAL_DESCRIPTION);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_BUDGET IMPLEMENTATION
        FUNCTION GET_BUDGET(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                  VMENERROR      EXCEPTION;
                 VNBUDGET NUMBER(20);

        BEGIN
                  SELECT BUDGET
                  INTO VNBUDGET
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNBUDGET);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_VOTE IMPLEMENTATION
        FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                  VMENERROR      EXCEPTION;
                 VNVOTE NUMBER(20);

        BEGIN
                  SELECT VOTE
                  INTO VNVOTE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNVOTE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_PROPOSAL_DATE IMPLEMENTATION
        FUNCTION GET_DATE_PROPOSAL(PNID_PROPOSAL IN NUMBER) RETURN DATE
        IS
                  VMENERROR      EXCEPTION;
                 VNPROPOSAL_DATE DATE;

        BEGIN
                  SELECT PROPOSAL_DATE
                  INTO VNPROPOSAL_DATE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNPROPOSAL_DATE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        PROCEDURE INSERT_PROPOSAL(PNTITLE VARCHAR2 ,PNPROPOSAL_DESCRIPTION VARCHAR2,
         PNBUDGET NUMBER,PNPROPOSAL_DATE DATE) IS

           BEGIN
             INSERT INTO PROPOSAL(ID_PROPOSAL,TITLE,PROPOSAL_DESCRIPTION,BUDGET,VOTE,PROPOSAL_DATE)
             VALUES (S_PROPOSAL.NEXTVAL,PNTITLE,PNPROPOSAL_DESCRIPTION,PNBUDGET,0,PNPROPOSAL_DATE);

           END INSERT_PROPOSAL;


           ---------------------------------------------------------------------------------
    --PROCEDURE SET_ID_PROPOSAL(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
    --     BEGIN
    --         UPDATE PROPOSAL SET ID_PROPOSAL= PNNEW_VALUE WHERE ID_PROPOSAL=PNOLD_VALUE;
    --    END SET_ID_PROPOSAL;


         ---------------------------------------------------------------------------------
    PROCEDURE SET_TITLE(PNID_PROPOSAL NUMBER, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                       EXCEPTION;
         BEGIN
             UPDATE PROPOSAL SET TITLE= PNNEW_VALUE WHERE ID_PROPOSAL=PNID_PROPOSAL;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_TITLE;

         ---------------------------------------------------------------------------------
    PROCEDURE SET_PROPOSAL_DESCRIPTION(PNID_PROPOSAL NUMBER, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                                      EXCEPTION;
         BEGIN
             UPDATE PROPOSAL SET PROPOSAL_DESCRIPTION= PNNEW_VALUE WHERE ID_PROPOSAL=PNID_PROPOSAL;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_PROPOSAL_DESCRIPTION;

         ---------------------------------------------------------------------------------
    PROCEDURE SET_BUDGET(PNID_PROPOSAL NUMBER, PNNEW_VALUE NUMBER) IS
      VMENERROR                        EXCEPTION;
         BEGIN
             UPDATE PROPOSAL SET BUDGET= PNNEW_VALUE WHERE ID_PROPOSAL=PNID_PROPOSAL;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_BUDGET;

         ---------------------------------------------------------------------------------
    PROCEDURE SET_VOTE(PNID_PROPOSAL NUMBER, PNNEW_VALUE NUMBER) IS
      VMENERROR                      EXCEPTION;
         BEGIN
             UPDATE PROPOSAL SET VOTE= PNNEW_VALUE WHERE ID_PROPOSAL=PNID_PROPOSAL;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_VOTE;

         ---------------------------------------------------------------------------------
    PROCEDURE SET_PROPOSAL_DATE(PNID_PROPOSAL NUMBER, PNNEW_VALUE DATE) IS
      VMENERROR                               EXCEPTION;
         BEGIN
             UPDATE PROPOSAL SET PROPOSAL_DATE= PNNEW_VALUE WHERE ID_PROPOSAL=PNID_PROPOSAL;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_PROPOSAL_DATE;

END PKG_ADMIN_PROPOSAL;
