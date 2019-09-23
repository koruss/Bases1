--PROPOSAL_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPOSAL  IS
       FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_TITLE(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_DESCRIPTION_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_BUDGET(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DATE_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN DATE;
END PKG_ADMIN_PROPOSAL;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPOSAL IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PROPOSAL                      NUMBER(10);
         BEGIN
                  SELECT ID_PROPOSAL  
                  INTO VNID_PROPOSAL
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNID_PROPOSAL);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_TITLE(PNID_PROPOSAL IN NUMBER) RETURN VARCHAR2
        IS
                 VNTITLE VARCHAR2(20);

        BEGIN
                  SELECT TITLE
                  INTO VNTITLE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNTITLE);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_DESCRIPTION_PROPOSAL(PNID_PROPOSAL IN NUMBER) RETURN VARCHAR2
        IS
                 VNDESCRIPTION_PROPOSAL VARCHAR2(20);

        BEGIN
                  SELECT DESCRIPTION_PROPOSAL
                  INTO VNDESCRIPTION_PROPOSAL
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNDESCRIPTION_PROPOSAL);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_BUDGET(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                 VNBUDGET NUMBER(20);

        BEGIN
                  SELECT BUDGET
                  INTO VNBUDGET
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNBUDGET);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                 VNVOTE NUMBER;

        BEGIN
                  SELECT VOTE
                  INTO VNVOTE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNVOTE);
        END;
        
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_DATE_PROPOSAL(PNID_PROPOSAL IN NUMBER) RETURN DATE
        IS
                 VNDATE_PROPOSAL DATE;

        BEGIN
                  SELECT DATE_PROPOSAL
                  INTO VNDATE_PROPOSAL
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNDATE_PROPOSAL);
        END;

       
END PKG_ADMIN_PROPOSAL;
