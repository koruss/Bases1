CREATE OR REPLACE PACKAGE PKG_ADMIN_VOTE IS
       FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PROPOSAL(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       PROCEDURE PROC_INSERT_VOTE(ID_PROPOSAL NUMBER, ID_PERSON NUMBER);
       PROCEDURE GET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE GET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
END PKG_ADMIN_VOTE;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_VOTE IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PERSON                      NUMBER(10);
         BEGIN
                  SELECT ID_PERSON
                  INTO VNID_PERSON
                  FROM VOTE
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_PERSON);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PROPOSAL IMPLEMENTATION
        FUNCTION GET_ID_PROPOSAL(PNID_PERSON IN NUMBER) RETURN NUMBER
        IS
                 VNID_PROPOSAL NUMBER(20);

        BEGIN
                  SELECT ID_PROPOSAL
                  INTO VNID_PROPOSAL
                  FROM VOTE
                  WHERE ID_PERSON=PNID_PERSON;
                  RETURN (VNID_PROPOSAL);
        END;

        PROCEDURE PROC_INSERT_VOTE(ID_PROPOSAL NUMBER, ID_PERSON NUMBER) IS
         
           BEGIN
             INSERT INTO VOTE(ID_PROPOSAL, ID_PERSON)
             VALUES (ID_PROPOSAL, ID_PERSON);
             
           END PROC_INSERT_VOTE;
           
           ---------------------------------------------------------------------------------
    PROCEDURE GET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
            UPDATE VOTE SET ID_PERSON= NEW_VALUE WHERE ID_PERSON=OLD_VALUE;             
         END GET_ID_PERSON;
         
         ---------------------------------------------------------------------------------
    PROCEDURE GET_ID_PROPOSAL(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE VOTE SET ID_PROPOSAL= NEW_VALUE WHERE ID_PROPOSAL=OLD_VALUE;            
         END GET_ID_PROPOSAL;
END PKG_ADMIN_VOTE;
