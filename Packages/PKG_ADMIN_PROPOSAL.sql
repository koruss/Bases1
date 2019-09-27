CREATE OR REPLACE PACKAGE PKG_ADMIN_PROPOSAL  IS
       FUNCTION GET_ID_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_TITLE(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_DESCRIPTION_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_BUDGET(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DATE_PROPOSAL(PNID_PROPOSAL IN NUMBER)  RETURN DATE;
       PROCEDURE PROC_INSERT_PROPOSAL(ID_PROPOSAL NUMBER,TITLE VARCHAR2 ,DESCRIPTION_PROPOSAL VARCHAR2,
         BUDGET NUMBER,VOTE NUMBER,DATE_PROPOSAL DATE);
       PROCEDURE GET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE GET_TITLE(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
       PROCEDURE GET_DESCRIPTION_PROPOSAL(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
       PROCEDURE GET_BUDGET(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE GET_VOTE(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE GET_DATE_PROPOSAL(NEW_VALUE DATE, OLD_VALUE DATE);
END PKG_ADMIN_PROPOSAL;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PROPOSAL IS
        --FUNCTION GET_ID_PROPOSAL IMPLEMENTATION
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
        --FUNCTION GET_TITLE IMPLEMENTATION
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
        --FUNCTION GET_DESCRIPTION_PROPOSAL IMPLEMENTATION
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
        --FUNCTION GET_BUDGET IMPLEMENTATION
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
        --FUNCTION GET_VOTE IMPLEMENTATION
        FUNCTION GET_VOTE(PNID_PROPOSAL IN NUMBER) RETURN NUMBER
        IS
                 VNVOTE NUMBER(20);

        BEGIN
                  SELECT VOTE
                  INTO VNVOTE
                  FROM PROPOSAL
                  WHERE ID_PROPOSAL=PNID_PROPOSAL;
                  RETURN (VNVOTE);
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_DATE_PROPOSAL IMPLEMENTATION
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

        PROCEDURE PROC_INSERT_PROPOSAL(ID_PROPOSAL NUMBER,TITLE VARCHAR2 ,DESCRIPTION_PROPOSAL VARCHAR2,
         BUDGET NUMBER,VOTE NUMBER,DATE_PROPOSAL DATE) IS
         
           BEGIN
             INSERT INTO PROPOSAL(ID_PROPOSAL,TITLE,DESCRIPTION_PROPOSAL,BUDGET,VOTE,DATE_PROPOSAL)
             VALUES (ID_PROPOSAL,TITLE,DESCRIPTION_PROPOSAL,BUDGET,VOTE,DATE_PROPOSAL);
             
           END PROC_INSERT_PROPOSAL;
           
           
           ---------------------------------------------------------------------------------
    PROCEDURE GET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE PROPOSAL SET ID_PROPOSAL= NEW_VALUE WHERE ID_PROPOSAL=OLD_VALUE;             
         END GET_ID_PROPOSAL;
         
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_TITLE(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         BEGIN
             UPDATE PROPOSAL SET TITLE= NEW_VALUE WHERE TITLE=OLD_VALUE;            
         END GET_TITLE;
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_DESCRIPTION_PROPOSAL(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         BEGIN
             UPDATE PROPOSAL SET DESCRIPTION_PROPOSAL= NEW_VALUE WHERE DESCRIPTION_PROPOSAL=OLD_VALUE;             
         END GET_DESCRIPTION_PROPOSAL;
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_BUDGET(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE PROPOSAL SET BUDGET= NEW_VALUE WHERE BUDGET=OLD_VALUE;             
         END GET_BUDGET;
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_VOTE(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE PROPOSAL SET VOTE= NEW_VALUE WHERE VOTE=OLD_VALUE;             
         END GET_VOTE;
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_DATE_PROPOSAL(NEW_VALUE DATE, OLD_VALUE DATE) IS
         BEGIN
             UPDATE PROPOSAL SET DATE_PROPOSAL= NEW_VALUE WHERE DATE_PROPOSAL=OLD_VALUE;             
         END GET_DATE_PROPOSAL;
END PKG_ADMIN_PROPOSAL;
