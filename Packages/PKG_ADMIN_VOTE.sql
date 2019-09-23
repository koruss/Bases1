--VOTE_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_VOTE IS
       FUNCTION GET_ID_PERSON(PNID_PERSON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PROPOSAL(PNID_PERSON IN NUMBER)  RETURN NUMBER;

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
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
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
       
END PKG_ADMIN_VOTE;
