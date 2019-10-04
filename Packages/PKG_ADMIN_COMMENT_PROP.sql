CREATE OR REPLACE PACKAGE PKG_ADMIN_COMMENT_PROP  IS
       FUNCTION GET_ID_COMMENT(PNID_COMMENT IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_DESCRIPTION_COMMENT(PNID_COMMENT IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_DATE_COMMENT(PNID_COMMENT IN NUMBER)  RETURN DATE;
       PROCEDURE PROC_INSERT_COMMENT_PROP(ID_COMMENT NUMBER,comment_description VARCHAR2,comment_date DATE);
       --PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_DESCRIPTION_COMMENT(PNID_COMMENT NUMBER, NEW_VALUE VARCHAR2);
       PROCEDURE SET_DATE_COMMENT(PNID_COMMENT NUMBER, NEW_VALUE DATE);

END PKG_ADMIN_COMMENT_PROP;



CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_COMMENT_PROP IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_COMMENT(PNID_COMMENT IN NUMBER)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_COMMENT                        NUMBER(10);
         BEGIN
                  SELECT ID_COMMENT
                  INTO VNID_COMMENT
                  FROM Proposal_comment
                  WHERE ID_COMMENT=PNID_COMMENT;
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
        --FUNCTION GET_DESCRIPTION_COMMENT IMPLEMENTATION
        FUNCTION GET_DESCRIPTION_COMMENT(PNID_COMMENT IN NUMBER) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNDESCRIPTION_COMMENT                VARCHAR2(50);

        BEGIN
                  SELECT comment_description
                  INTO VNDESCRIPTION_COMMENT
                  FROM Proposal_comment
                  WHERE ID_COMMENT=PNID_COMMENT;
                  RETURN (VNDESCRIPTION_COMMENT);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_DATE_COMMENT IMPLEMENTATION
        FUNCTION GET_DATE_COMMENT(PNID_COMMENT IN NUMBER) RETURN DATE
        IS
                 VMENERROR      EXCEPTION;
                 VNDATE_COMMENT DATE;

        BEGIN
                  SELECT comment_date
                  INTO VNDATE_COMMENT
                  FROM Proposal_comment
                  WHERE ID_COMMENT=PNID_COMMENT;
                  RETURN (VNDATE_COMMENT);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;
        
        PROCEDURE PROC_INSERT_COMMENT_PROP(ID_COMMENT NUMBER,comment_description VARCHAR2,comment_date DATE) IS
         
           BEGIN
             INSERT INTO Proposal_comment(ID_COMMENT,comment_description,comment_date)
             VALUES (ID_COMMENT,comment_description,comment_date);
             
           END PROC_INSERT_COMMENT_PROP;
           
           
/*       PROCEDURE SET_ID_COMMENT(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         BEGIN
             UPDATE Proposal_comment SET ID_COMMENT= NEW_VALUE WHERE ID_COMMENT=OLD_VALUE;             
         END SET_ID_COMMENT;*/
         
         
       PROCEDURE SET_DESCRIPTION_COMMENT(PNID_COMMENT NUMBER, NEW_VALUE VARCHAR2) IS
         VMENERROR                                    EXCEPTION;
         BEGIN
             UPDATE Proposal_comment SET comment_description= NEW_VALUE WHERE ID_COMMENT=PNID_COMMENT; 
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
         END SET_DESCRIPTION_COMMENT;
         
         
      PROCEDURE SET_DATE_COMMENT(PNID_COMMENT NUMBER, NEW_VALUE DATE) IS
        VMENERROR                             EXCEPTION;
         BEGIN
             UPDATE Proposal_comment SET comment_date= NEW_VALUE WHERE ID_COMMENT=PNID_COMMENT;  
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');           
         END SET_DATE_COMMENT;
END PKG_ADMIN_COMMENT_PROP;
